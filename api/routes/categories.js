const express = require('express')
const router = express.Router()
// Bring DB and Model
const db = require('../../config/database')
const Categories = require('../../models/Categories')

router.get('/', async (req, res) => {
    try {
        const categories = await Categories.findAll()
        console.log(categories)

        if (categories) {
            res.json({
                success: true,
                categories: categories
            })
        } else {
            res.json({
                success: false,
                message: "No categories found"
            })
        }
    }
    catch (err) {
        res.json({ message: err })
    }
})
module.exports = router