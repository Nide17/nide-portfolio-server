const express = require('express')
const router = express.Router()
// Bring DB and Model
const db = require('../../config/database')
const AboutDocs = require('../../models/AboutDocs')
const Categories = require('../../models/Categories')
const SubCategories = require('../../models/SubCategories')

Categories.hasMany(SubCategories);
Categories.hasMany(AboutDocs);
SubCategories.hasMany(AboutDocs);

SubCategories.belongsTo(Categories);
AboutDocs.belongsTo(Categories);
AboutDocs.belongsTo(SubCategories);

router.get('/', async (req, res) => {

    try {
        const aboutDocs = await AboutDocs.findAll({
            include: [{
                model: Categories,
                required: true
            },
            {
                model: SubCategories,
                required: true
            }]
        })
        console.log(aboutDocs)

        if (aboutDocs) {
            res.json({
                success: true,
                aboutDocs: aboutDocs
            })
        } else {
            res.json({
                success: false,
                message: "No aboutDocs found"
            })
        }
    }
    catch (err) {
        res.json({ message: err })
    }

})

module.exports = router