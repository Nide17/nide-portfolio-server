const express = require('express')
const router = express.Router()
// Bring DB and Model
const db = require('../config/database')
const SubCategory = require('../models/SubCategory')

router.get('/', (req, res) =>
    SubCategory.findAll()
        .then(subCategories => {
            console.log(subCategories)
            res.sendStatus(200)
        })
        .catch(err => console.log(err)))

module.exports = router