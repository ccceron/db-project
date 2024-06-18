const createError = require('http-errors');
const express = require('express');
const loginRoutes = require('./routes/login');
const clienteRoutes = require('./routes/cliente');
const serviciosRoutes = require('./routes/servicios');

dotenv.config();

const app = express();
const port = 3000;

app.set('view engine', 'pug');
app.use(express.urlencoded({ extended: true }));

app.use('/login', loginRoutes);
app.use('/clientes', clienteRoutes);
app.use('/servicios', serviciosRoutes);

app.get('/dashboard', (req, res) => {
    res.render('dashboard');
});

app.listen(port, () => {
    console.log(`App running on port ${port}.`);
});