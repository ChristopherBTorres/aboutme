const express = require('express');
const projectsRoutes = require('./routes/projectsRoutes');
const db = require('./database/database');
const app = express();
const cors = require('cors');

app.use(cors({origins: ("http://localhost:4173", "http://localhost:5173"), credentials: true}));

app.use('/projects', projectsRoutes(db));

app.listen(3000, () =>{
    console.log('Server is listening on port 3000...')
})