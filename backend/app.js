const express = require('express');
const app = express();
const port = 3000;

app.set('view engine', 'pug');
app.set('views','./views');

app.use(express.urlencoded({extended:true}));

app.get('/login', (req, res)=>{
    const { username, password } = req.body;

    if (username === 'admin' && password === 'password'){
        res.redirect('');
    } else{
        res.send('Usuario o contraseña incorrectos');
    }
});

app.get('')