const Sequelize = require('sequelize')
// Database
const db = new Sequelize(process.env.PG_PORTFOLIO_URL)

const SubCategories = db.define('subcategories', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    title: {
        type: Sequelize.STRING,
        allowNull: false
    },
    categoryId: {
        type: Sequelize.INTEGER
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

module.exports = SubCategories