const Sequelize = require('sequelize')
// Database
const db = require('../config/database')

const Contacts = db.define('contacts', {
    name: {
        type: Sequelize.STRING,
        allowNull: false
    },
    email: {
        type: Sequelize.STRING,
        allowNull: false
    },
    message: {
        type: Sequelize.STRING,
        allowNull: false
    }
})

module.exports = Contacts