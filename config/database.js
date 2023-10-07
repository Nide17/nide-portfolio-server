const Sequelize = require('sequelize')

// Connecting to a database by Passing a connection URI
// module.exports = new Sequelize('postgres://postgres:jesus123@localhost:5432/niyomwungeri')

// module.exports = new Sequelize('postgres://jwkfokovidxbtk:b5d4f16c90b8180b309d78b143196b9cf96a51075456d51b222d94c01688796d@ec2-18-234-17-166.compute-1.amazonaws.com:5432/dbpht3obblas5g')

// // Option 3: Passing parameters separately (other dialects)
// module.exports = new Sequelize('dbpht3obblas5g', 'jwkfokovidxbtk', 'b5d4f16c90b8180b309d78b143196b9cf96a51075456d51b222d94c01688796d', {
//     host: 'ec2-18-234-17-166.compute-1.amazonaws.com',
//     dialect: "postgres",
//     dialectOptions: {
//         ssl: {
//             require: true, // This will help you. But you will see nwe error
//             rejectUnauthorized: false // This line will fix new error
//         }
//     },
// });

// Option 3: Passing parameters separately (other dialects)
module.exports = new Sequelize('afzwulnw', 'afzwulnw', 'BvGa0WqOeOH3QoA9MVrtWSyShFT7wQWt', {
    host: 'cornelius.db.elephantsql.com',
    dialect: "postgres",
    dialectOptions: {
        ssl: {
            require: true, // This will help you. But you will see nwe error
            rejectUnauthorized: false // This line will fix new error
        }
    },
});