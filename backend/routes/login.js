const express = require('express');
const router = express.Router();
const { Pool } = require('pg');
const dotenv = require('dotenv');

dotenv.config();

const pool = new Pool({
    connectionString: process.env.DATABASE_URL
});

router.get('/login', (req, res) => {
    res.render('login');
});

router.post('/login', async (req, res) => {
    const { username, password } = req.body;

    if(username === 'admin' && password === 'password'){
        res.redirect('/dashboard')
    } else{
        res.send('Usuario o contraseña incorrecta')
    }
});

module.exports = router;
