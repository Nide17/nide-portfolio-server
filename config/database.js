const Sequelize = require('sequelize')

// Connecting to a database by Passing a connection URI
module.exports = new Sequelize('postgres://postgres:jesus123@localhost:5432/niyomwungeri')
