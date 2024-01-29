const mysql = require('mysql');

const db = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'',
    database:'event_managment_system'
})

db.connect(err=>{
    if(err){
        console.log('Error connecting to mysql:', err);
    }else{
        console.log('Connected to mysql database');
    }
})

module.exports=db;