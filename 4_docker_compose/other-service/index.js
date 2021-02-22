import express from 'express';
import bodyParser from 'body-parser';
import fetch from 'node-fetch';

 
const app = express();
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.get('/', (req, res) => {
    console.log(`Calling ${process.env.CRUD_SERVICE_URL || 'http://localhost:3000'} url`)
    return fetch(process.env.CRUD_SERVICE_URL || 'http://localhost:3000')
    .then(res => res.json())
    .then((json) => {
        console.log(json);
        return res.json({
            "service": "todo",
            "numberOfItems": json.length
        });
    });
});


app.listen(process.env.PORT || 4000, () =>
    console.log(`Example app listening on port ${process.env.PORT || 4000}!`),
);
