var express = require("express")
var cors = require("cors")
var bodyParser = require("body-parser")
var app = express()
const db = require("./app/models");
db.sequelize.sync({force: true}).then(() => {
    console.log("Drop and re-sync db.");
  });

  db.sequelize.sync();
var port = process.env.PORT || 5000

var corsOptions = {
    origin: "http://localhost:8081"
  };
// parse requests of content-type - application/json
app.use(bodyParser.json())
app.use(cors(corsOptions))

// parse requests of content-type - application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({extended: true}))

// simple route
app.get("/", (req, res) => {
    res.json({ message: "Welcome to Stor4 Ecommerce application." });
  });



app.listen(port, ()=> {


    console.log("Server is running on port: " + port )
})











