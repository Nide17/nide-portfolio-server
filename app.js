const express = require('express')
const path = require('path')

// Database
const db = require('./config/database')

// Initialize express
const app = express()

// 1.Body parser and 2.form data usage
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
app.use('/categories', require('./routes/categories'))

// Subcategories routes middleware
app.use('/subcategories', require('./routes/subCategories'))

// Subcategories routes middleware
app.use('/aboutdocs', require('./routes/aboutdocs'))


const PORT = process.env.PORT || 5000
app.listen(PORT, console.log(`Server running on port ${PORT}`))