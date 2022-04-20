const checkLoggedIn = require('../authentication/checkLoggedIn');
const isManagerOf = require('../employee/isManagerOf');
const {models} = require('../../sequelize/sequelizeConstructor');

// GET /api/empTasks/ptoRequests?ASTO=aBigInt
// Passes a json file with the employee's pto requests
function ptoRequests(app){
  app.get('/api/empTasks/ptoRequests',
  checkLoggedIn,
  async (req, res) => {
    if(!(req.user.e_id === req.query.EID || isManagerOf(req.user.e_id, req.query.EID))){
      return res.json({Error:"No permission"});
    }
    const pto_requests = await models.pto_request.findAll({
      attributes: ['pto_id', 'title', 'description', 'start_date', 'end_date', 'date_created', 'date_due', 'progress', 'approved', 'assigned_to'],
      where: {
        assigned_to: req.query.ASTO
      }
    });
    res.json(pto_requests)
  });
}

module.exports = ptoRequests;