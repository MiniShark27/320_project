const checkLoggedIn = require('../authentication/checkLoggedIn');
const {models} = require('../../sequelize/sequelizeConstructor');
/* NEED TO DECIDE WHO CAN VIEW/EDIT WHOSE TASKS */

// GET /api/empTasks/assignedTrainings?EID=aBigInt
// Passes a json file with the employee's assigned trainings
function assignedTrainings(app){
  app.get('/api/empTasks/assignedTrainings',
  checkLoggedIn,
  async (req, res) => {
    const assigned_trainings = await models.assigned_training.findAll({
      attributes: ['title', 'description', 'link', 'date_created', 'date_due', 'progress'/**/],
      where: {
        e_id: req.query.EID
      }
    });
    res.json(assigned_trainings)
  });
}

module.exports = assignedTrainings;