import express from 'express';
import bodyParser from 'body-parser';
import models, { connectDb } from './models/models.js';
 
const app = express();
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.get('/', (req, res) => {
    console.log("Get Todos!")
    models.ToDo.find().then(data => res.json(data))
})

app.post('/', (req, res) => {
    console.log("Added a new Todo")
    const todo = new models.ToDo({
        text: req.body.text,
        user: req.body.user,
    })
    todo.save();
    return res.json(todo)

})

connectDb().then(async () => {
    app.listen(process.env.PORT || 3000, () =>
      console.log(`Example app listening on port ${process.env.PORT || 3000}!`),
    );
  });
