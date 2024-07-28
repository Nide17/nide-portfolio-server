const Sequelize = require('sequelize')
// Database
const db = new Sequelize(process.env.PG_PORTFOLIO_URL)

const AboutDocs = db.define('aboutdocs', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
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
    },
    createdAt: {
        type: Sequelize.DATE,
        defaultValue: Sequelize.NOW
    },
    updatedAt: {
        type: Sequelize.DATE,
        defaultValue: Sequelize.NOW
    },
})

module.exports = AboutDocs