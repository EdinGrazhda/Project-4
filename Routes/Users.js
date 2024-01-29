const express = require('express');
const db=require('../database/db');
const router = express.Router();

 router.post('/',(req,res)=>{
    const {user_id, f_name, l_name,email,age } = req.body;
  
    if (!f_name && !l_name) {
      return res.status(400).send('Full name and Last name are required');
    }
  
    const sql = 'INSERT INTO users (user_id, f_name, l_name,email,age) VALUES (?, ?, ?, ?, ?)';
    const values = [user_id, f_name, l_name,email,age];
  
    db.query(sql, values, (err, result) => {
      if (err) {
        console.error('Error creating a new user:', err);
        res.status(500).send('Internal Server Error');
        return;
      }
  
      res.json('user inserted successfully !');    
 });
 });

 router.put('/:id', (req, res) => {
  const userId = req.params.id;
  const { f_name, l_name, email, age } = req.body;

  if (!f_name && !l_name) {
    return res.status(400).send('Full name and Last name are required');
  }

  const sql = 'UPDATE users SET f_name=?, l_name=?, email=?, age=? WHERE user_id=?';
  const values = [f_name, l_name, email, age, userId];

  db.query(sql, values, (err, result) => {
    if (err) {
      console.error('Error updating user details:', err);
      res.status(500).send('Internal Server Error');
      return;
    }

    res.send('User details updated successfully');
  });
});

router.delete('/:id', (req, res) => {
  const userId = req.params.id;

  if (!userId) {
      return res.status(400).send('User ID is required');
  }

  const sql = 'DELETE FROM users WHERE user_id=?';
  const values = [userId];

  db.query(sql, values, (err, result) => {
      if (err) {
          console.error('Error deleting user:', err);
          res.status(500).send('Internal Server Error');
          return;
      }

      res.send('User deleted successfully');
  });
});

router.get('/', (req, res) => {
  const sql = 'SELECT * FROM users';

  db.query(sql, (err, result) => {
      if (err) {
          console.error('Error getting list of users:', err);
          res.status(500).send('Internal Server Error');
          return;
      }

      res.json(result);
  });
});

  router.get('/:id',(req,res)=>{
    const userId = req.params.id;

    if (!userId) {
      return res.status(400).send('User ID is required');
  }

    const sql='Select * From users Where user_id=?';

    const values = [userId];

    db.query(sql,values,(err,result)=>{
      if(err){
        console.error('Error getting specific user :',err);
        res.status(500).send('Internal Server Error');
        return;
      }
      res.json(result);
    })
  })
 module.exports=router