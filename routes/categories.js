const express = require('express')
const router = express.Router()
// Bring DB and Model
const db = require('../config/database')
const Category = require('../models/Category')

router.get('/', (req, res) =>
    Category.findAll()
        .then(categories => {
            console.log(categories)
            res.sendStatus(200)
        })
        .catch(err => console.log(err)))

module.exports = router