const app = require('express')();
const os = require("os");

app.get('/', (req, res) =>
    res.json({
        status: 200,
        sender: 'frickerg',
        receiver: os.hostname(),
        message: 'Docking successful! 🐳'
    })
);

const port = process.env.PORT || 8080;

app.listen(port, () => console.log('express listening on http://localhost:' + port))