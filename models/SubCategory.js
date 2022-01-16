const Sequelize = require('sequelize')
// Database
const db = require('../config/database')

const SubCategory = db.define('subCategory', {
    title: {
        type: Sequelize.STRING,
        allowNull: false
    }
})

module.exports = SubCategory