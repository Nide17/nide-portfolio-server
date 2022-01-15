const Sequelize = require('sequelize')
// Database
const db = require('../config/database')

const AboutDocs = db.define(aboutDocs, {
    title: {
        type: Sequelize.STRING,
        allowNull: false
    },
    sub_cat_id: {
        type: Sequelize.INTEGER
    }
})

module.exports = AboutDocs