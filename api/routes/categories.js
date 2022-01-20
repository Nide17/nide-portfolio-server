const express = require('express')
const router = express.Router()
// Bring DB and Model
const db = require('../../config/database')
const Categories = require('../../models/Categories')

router.get('/', (req, res) =>
    Categories.findAll()
        .then(categories => {
            res.status(200).send(categories)
        })
        .catch(err => err))

module.exports = router