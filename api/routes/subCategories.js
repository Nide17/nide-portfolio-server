const express = require('express')
const router = express.Router()
// Bring DB and Model
const db = require('../../config/database')
const SubCategories = require('../../models/SubCategories')

router.get('/', (req, res) =>
    SubCategories.findAll()
        .then(subCategories => {
            res.status(200).send(subCategories)
        })
        .catch(err => err))

module.exports = router