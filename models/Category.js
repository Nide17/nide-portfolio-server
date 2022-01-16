const Sequelize = require('sequelize')
// Database
const db = require('../config/database')

const Category = db.define('category', {
    title: {
        type: Sequelize.STRING,
        allowNull: false
    },
    sub_cat_id: {
        type: Sequelize.INTEGER
    }
})

module.exports = Category