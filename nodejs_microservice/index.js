const chalk = require('chalk');
const express = require('express')
const app = express()
const port = 8080

console.log(chalk.red("Hello World!"))


app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})
