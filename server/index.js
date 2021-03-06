const express = require('express')
const path = require('path');

const app = express()
const port = 8000

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, '/static/index.html'));
})

app.listen(port, () => {
  console.log(`Node server running on port ${port}`)
})
