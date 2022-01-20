const Sequelize = require('sequelize')
// Database
const db = require('../config/database')

const AboutDocs = db.define('aboutdocs', {
    title: {
        type: Sequelize.STRING,
        allowNull: false
    },
    awsLink: {
        type: Sequelize.STRING,
        allowNull: false
    },
    credentialLink: {
        type: Sequelize.STRING
    },
    categoryId: {
        type: Sequelize.INTEGER,
        allowNull: false
    },
    subcategoryId: {
        type: Sequelize.INTEGER,
        allowNull: false
    },
    provider: {
        type: Sequelize.STRING
    }
})

module.exports = AboutDocs