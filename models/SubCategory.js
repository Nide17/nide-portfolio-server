const Sequelize = require('sequelize')
// Database
const db = require('../config/database')

const SubCategory = db.define('subcategory', {
    title: {
        type: Sequelize.STRING,
        allowNull: false
    },
    cat_id: {
        type: Sequelize.INTEGER
    }
})

module.exports = SubCategory