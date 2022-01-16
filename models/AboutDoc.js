const Sequelize = require('sequelize')
// Database
const db = require('../config/database')

const AboutDoc = db.define('aboutdoc', {
    title: {
        type: Sequelize.STRING,
        allowNull: false
    },
    aws_link: {
        type: Sequelize.STRING,
        allowNull: false
    },
    credential_link: {
        type: Sequelize.STRING
    },
    cat_id: {
        type: Sequelize.INTEGER,
        allowNull: false
    },
    sub_cat_id: {
        type: Sequelize.INTEGER,
        allowNull: false
    },
    provider: {
        type: Sequelize.STRING
    }
})

module.exports = AboutDoc