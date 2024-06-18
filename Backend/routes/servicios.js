const express = require('express');
const router = express.Router();
const { Pool } = require('pg');
const dotenv = require('dotenv');

dotenv.config();

const pool = new Pool({
    connectionString: process.env.DATABASE_URL
});


router.get('/', async (req, res) => {
    try {
        const result = await pool.query('SELECT * FROM servicio');
        res.render('servicio', { data: result.rows });
    } catch (err) {
        console.error(err);
        res.send('Error en la base de datos');
    }
});


router.post('/delete/:id', async (req, res) => {
    const { id } = req.params;
    try {
        await pool.query('DELETE FROM servicio WHERE scode = $1', [id]);
        res.redirect('/clientes');
    } catch (err) {
        console.error(err);
        res.send('Error al eliminar el registro');
    }
});

router.get('/search', async (req, res) => {
    const { query } = req.query;
    try {
        const result = await pool.query('SELECT * FROM clientes WHERE cemail ILIKE $1', [`%${query}%`]);
        res.render('servicio', { data: result.rows });
    } catch (err) {
        console.error(err);
        res.send('Error al buscar los registros');
    }
});

module.exports = router;