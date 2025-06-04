require('./bot');

const express = require('express');
const app = express();
const path = require('path');
const PORT = process.env.PORT || 3000;

app.use('/public', express.static(path.join(__dirname, 'public')));

app.get('/', (req, res) => res.send('Servidor activo'));

app.listen(PORT, () => {
    console.log(`Servidor corriendo en puerto ${PORT}`);
});
