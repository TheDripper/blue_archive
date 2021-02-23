const bodyParser = require('body-parser')
const app = require('express')()

app.use(bodyParser.json())
app.all('/pages', (req, res) => {
    let test = this;
  res.json({ data: test })
})

module.exports = app