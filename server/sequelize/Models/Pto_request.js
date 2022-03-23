const { DataTypes } = require('sequelize');

const schema = {
    pto_id : {
        type: DataTypes.BIGINT,
        primaryKey: true,
    },
    employeeId : {
        type: DataTypes.BIGINT,
    },
    companyId : {
        type: DataTypes.BIGINT,
    },
    title : {
        type: DataTypes.STRING,
    },
    description : {
        type: DataTypes.STRING,
    },
    start_date : {
        type: DataTypes.DATE,
    },
    end_date : {
        type: DataTypes.DATE,
    },
    date_created : {
        type: DataTypes.DATE,
    },
    date_due : {
        type: DataTypes.DATE,
    },
    progress : {
        type: DataTypes.STRING,
    },
    approved : {
        type: DataTypes.BOOLEAN,
    },
    assigned_to : {
        type: DataTypes.BIGINT,
    },
};

module.exports = ['pto_request',schema];