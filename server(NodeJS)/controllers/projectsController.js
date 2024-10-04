async function getProjects(db, req, res) {
    try {
        db.query('SELECT * FROM project', (error, result) => {
            if(error) throw error;
            res.send(result);
        });
    } catch (error) {
        console.error('Error fetching users:', error);
        res.status(500).json({error: 'Internal server error'});
    }
}

module.exports = {getProjects};