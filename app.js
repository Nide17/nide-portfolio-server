const express = require('express')
const path = require('path')

// Database
const db = require('./config/database')

// Initialize express
const app = express()

// Middlewares 1.Express body parser to access request body and 2. urlencoded to access form data
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Using .authenticate() function to test if the connection is OK
try {
    db.authenticate();
    console.log('Database connected ...');
} catch (error) {
    console.error('Unable to connect to the database:', error);
}

// Index route
app.get('/', (req, res) => {
    res.send('INDEX')
})

// categories routes middleware
app.use('/categories', require('./api/routes/categories'))

// Subcategories routes middleware
app.use('/subcategories', require('./api/routes/subCategories'))

// Subcategories routes middleware
app.use('/aboutdocs', require('./api/routes/aboutDocs'))


const PORT = process.env.PORT || 5000
app.listen(PORT, console.log(`Server running on port ${PORT}`))