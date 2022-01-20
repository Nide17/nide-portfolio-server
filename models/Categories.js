const Sequelize = require('sequelize')
// Database
const db = require('../config/database')

const Categories = db.define('categories', {
    title: {
        type: Sequelize.STRING,
        allowNull: false
    }
})

module.exports = Categories