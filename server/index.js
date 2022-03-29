const express = require('express')
const passport = require('passport')
const LocalStrategy = require('passport-local').Strategy
const expressSession = require('express-session')
const {models} = require('./sequelize/sequelizeConstructor');
const {Op} = require('sequelize');

const app = express()

app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "http://localhost:3000");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});

const session = {
  secret: process.env.SECRET || 'SECRET',
  resave: false,
  saveUninitialized: false,
};

async function findUser(db, email){
  try{
    const user = await models.employees.findOne({
      attributes: ['employeeId', 'companyId'],
      where: {
        email: email
      }
    });
    return user;
  }catch(error){
    console.log(error);
    return [];
  }
}

async function checkCred(db, email, password){
  try{
    const user = await db.findOne({
      attributes: ['employeeId', 'companyId'],
      where: {
        email: email,
        password: password
      }
    });
    return user !== null;
  }catch(error){
    console.log(error);
    return false;
  }
}
//strategy for authentication
const strategy = new LocalStrategy(
  async (email, password, done) => {
    //await for user
    const user = await findUser(models.employees, email);
    if (user === null) {
      return done(null, false);
    }
    //add function to check credentials
    checkCred(models.employees, email, password).then(async function(result){
      if (!result) {
        await new Promise((r) => setTimeout(r, 200));
        return done(null, false);
      }
      return done(null, {employeeId: user.employeeId, companyId: user.companyId});
    });
  },
);

//initalize the session
app.use(expressSession(session));
passport.use(strategy);
app.use(passport.initialize());
app.use(passport.session());


passport.serializeUser((user, done) => {
  done(null, user);
});
passport.deserializeUser((uid, done) => {
  done(null, uid);
});

// Allow JSON inputs
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

function checkLoggedIn(req, res, next) {
  if (req.isAuthenticated()) {
    next();
  } else {
    res.redirect('/');
  }
}

async function isManager(db, user){
  try{
    const employee = await db.findOne({
      attributes: ['isManager'],
      where: {
        companyId: user.companyId,
        managerId: user.employeeId,
      }
    });
    return employee !== null && employee.isManager === true;
  }catch(error){
    console.log(error);
    return [];
  }
}

async function getDirectManagedEmployees(db, user){
  try{
    if(isManager(db, user)){
      const managedEmployees = await db.findAll({
        attributes: ['employeeId', 'companyId'],
        where: {
          companyId: user.companyId,
          managerId: user.employeeId,
        }
      });
      return managedEmployees;
    }
    return [];
  }catch(error){
    console.log(error);
    return [];
  }
}

// async function getAll(db, user){
//   try{
//       const managedEmployees = await db.findAll({
//         attributes: ['employeeId', 'companyId', 'managerId'],
//         where: {
//           companyId: user.companyId,
//         }
//       });
//       return managedEmployees;
//   }catch(error){
//     console.log(error);
//     return [];
//   }
// }

async function getRecursiveManagedEmployees(db, user){
  try{
    if(isManager(db, user)){
      var managedEmployees = await db.findAll({
        attributes: ['employeeId', 'companyId'],
        where: {
          companyId: user.companyId,
          managerId: user.employeeId,
        }
      });
      var managedL2 = managedEmployees;
      while(managedL2.length > 0)
      {
        var managedL3 = [];
        for(var i = 0; i < managedL2.length; ++i)
        {
          const managedL3Part = await getDirectManagedEmployees(models.employees, managedL2[i]);
          managedL3 = managedL3.concat(managedL3Part);
        }
        managedL2 = managedL3;
        managedEmployees = managedEmployees.concat(managedL2);
      }
      managedEmployees = managedEmployees.concat({employeeId: "128", companyId: "2"});
      var ret = [];
      var hit = [];
      managedEmployees.forEach(e => {
        if(!hit.includes(e.employeeId)) {
          ret = ret.concat(e);
          hit = hit.concat(e.employeeId);
        }
      })
      return ret;
    }
    return [];
  }catch(error){
    console.log(error);
    return [];
  }
}

app.post('/login',
  passport.authenticate('local', {
    //placeholders for redirects
    successRedirect: '/home',
    failureRedirect: '/',
  })
);

app.get('/logout', (req, res) => {
  req.logout();
  res.redirect('/');
});

app.get('/directManagedEmployees', 
  checkLoggedIn,
  async (req, res) => {
    const result = await getDirectManagedEmployees(models.employees, req.user);
    res.send(JSON.parse(JSON.stringify(result)));
  }
);

app.get('/recursiveManagedEmployees', 
  checkLoggedIn,
  async (req, res) => {
    const result = await getRecursiveManagedEmployees(models.employees, req.user);
    res.send(JSON.parse(JSON.stringify(result)));
  }
);

// app.get('/allFrom2',
//   checkLoggedIn,
//   async (req, res) => {
//     const result = await getAll(models.employees, req.user);
//     res.send(JSON.parse(JSON.stringify(result)));
//   }
// );

// app.get('/checkLoggedIn',
//   checkLoggedIn,
//   async (req, res) => {
//     res.send(JSON.parse(JSON.stringify(req.user)));
//   }
// )

app.get('/', (req, res) => {
  res.sendFile('joenjoe.png', {root: './server'})
})

app.get('/hello', (req, res) => {
  res.send('hello world!')
})

app.get('/api/testAPI', (req, res) => {
  res.json({ 'string': 'hello!' })
})

app.get('/api/testDB', async (req, res) => {
  const users = await models.employees.findAll({
    attributes: ['employeeId', 'firstName', 'lastName'],
    where: {
      positionTitle: 'CEO'
    }
  });
  res.json(users)
})

module.exports = app;
