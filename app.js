const express = require('express');
const mysql = require('mysql'); 
var app = express();
var cors = require("cors")
var config = require("./config")
const bodyparser = require('body-parser');
//Creating mysqlconnection 
app.use(bodyparser.json())
app.use(cors());
app.use(bodyparser.urlencoded({extended: false}))

//Use Database Pooling Connections instead

var mysqlconnection = mysql.createConnection({

host: config.database.host,
user: config.database.user, 
password: config.database.password,
database: config.database.db
});


mysqlconnection.on('error', function(error) {
   if(!error) {
       console.log('Error');
   } else {
       console.log('Connected');
   }
  });

  

  app.listen(1337, ()=> console.log('Express server is running at port no : 1337')); 
  

  //Get All Users 
  app.get('/users',(req, res)=> {
    mysqlconnection.query('SELECT * FROM users' ,(error, rows, fields) =>{
        if(!error) 
            
            res.send(rows);

        else 
            console.log('DB Connection failed \n Error: '+ JSON.stringify(error, undefined, 2));
    
    })
  });

  //Get  Users by id 
  app.get('/users/:id',(req, res)=> {
    mysqlconnection.query('SELECT * FROM users WHERE id = ?' ,[req.params.id],(error, rows, fields) =>{
        if(!error) 
            
            res.send(rows);

        else 
            console.log('DB Connection failed \n Error: '+ JSON.stringify(error, undefined, 2));
    
    })
  });


  //Delete Users by id 
  app.delete('/users/:id',(req, res)=> {
    mysqlconnection.query('DELETE * FROM users WHERE id = ?' ,[req.params.id],(error, rows, fields) =>{
        if(!error) 
            
            res.send('Deleted sucessfully');

        else 
            console.log('DB Connection failed \n Error: '+ JSON.stringify(error, undefined, 2));
    
    })
  });