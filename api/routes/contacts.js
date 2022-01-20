const express = require('express')
const router = express.Router()

// Bring DB and Model
const db = require('../../config/database')
const Contacts = require('../../models/Contacts')

// Get all contacts
router.get('/', async (req, res) =>

    await Contacts.findAll()

        .then(contacts => {
            res.status(200).send(contacts)
        })

        .catch(err => err))


// create new contact message
router.post('/', async (req, res) => {

    try {
        const newContact = await Contacts.create(req.body);
        res.send(newContact);
        console.log(newContact);
        if (!newContact) throw Error('Something went wrong!');

    } catch (err) {
        console.log(err);

        if (err.name === "ValidationError") {
            return res.status(400).send(err.errors);
        }
        res.status(500).send("Something went wrong");
    }
});

module.exports = router