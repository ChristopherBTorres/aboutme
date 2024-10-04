const express = require('express');
const projectsController = require('../controllers/projectsController');

function projectsRoutes(db) {
    const router = express.Router();

    router.get('/', (req, res) => projectsController.getProjects(db, req, res));

    return router;
}

module.exports = projectsRoutes;