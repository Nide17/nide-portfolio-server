const Sequelize = require('sequelize')
// Database
const db = require('../config/database')

const AboutDoc = db.define('aboutDoc', {
    title: {
        type: Sequelize.STRING,
        allowNull: false
    },
    sub_cat_id: {
        type: Sequelize.INTEGER
    }
})

module.exports = AboutDoc