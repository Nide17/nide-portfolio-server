const express = require('express')
const router = express.Router()
// Bring DB and Model
const db = require('../config/database')
const AboutDoc = require('../models/AboutDoc')

router.get('/', (req, res) =>
    AboutDoc.findAll()
        .then(aboutDocs => {
            console.log(aboutDocs)
            res.sendStatus(200)
        })
        .catch(err => console.log(err)))

module.exports = router