const express = require('express')
var cors = require('cors')
const Sequelize = require('sequelize')
require('dotenv').config()

// Database
const db = new Sequelize(process.env.PG_PORTFOLIO_URL)

// Initialize express
const app = express()

// Enabling cors
app.use(cors())

// Middlewares 1.Express body parser to access request body and 2. urlencoded to access form data
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Using .authenticate() function to test if the connection is OK
try {
    db.authenticate();
    // create tables if not exist
    db.sync({ force: false })
    console.log('Database connected ...');
} catch (error) {
    console.error('Unable to connect to the database:', error);
}

// Index route
app.get('/', (req, res) => {
    res.send('Welcome to Niyomwungeri Parmenide Ishimwe Portfolio')
})

// categories routes middleware
app.use('/categories', require('./api/routes/categories'))

// Subcategories routes middleware
app.use('/subcategories', require('./api/routes/subCategories'))

// Subcategories routes middleware
app.use('/aboutdocs', require('./api/routes/aboutDocs'))

// Contacts routes middleware
app.use('/contacts', require('./api/routes/contacts'))

const PORT = process.env.PORT || 5000
app.listen(PORT, console.log(`Server running on port ${PORT}`))