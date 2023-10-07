const express = require('express')
const router = express.Router()
// Bring DB and Model
const db = require('../../config/database')
const SubCategories = require('../../models/SubCategories')

router.get('/', async (req, res) => {
    try {
        const subCategories = await SubCategories.findAll()
        console.log(subCategories)

        if (subCategories) {
            res.json({
                success: true,
                subCategories: subCategories
            })
        } else {
            res.json({
                success: false,
                message: "No subCategories found"
            })
        }
    }
    catch (err) {
        res.json({ message: err })
    }
})

module.exports = router