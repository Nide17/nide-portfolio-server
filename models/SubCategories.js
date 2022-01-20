const Sequelize = require('sequelize')
// Database
const db = require('../config/database')

const SubCategories = db.define('subcategories', {
    title: {
        type: Sequelize.STRING,
        allowNull: false
    },
    categoryId: {
        type: Sequelize.INTEGER
    }
})

module.exports = SubCategories