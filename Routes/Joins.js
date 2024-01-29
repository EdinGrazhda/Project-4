const express = require('express');
const router = express.Router();
const db = require('../database/db');

router.get('/',(req, res) => {
    
    const qr = `
      SELECT events.event_name as EventName , events.event_location as Location, events.event_start as EventStart,
             events.event_end as EventEnd, events.deadline as EventDeadline, users.f_name as UserName, users.l_name as UserLastName
      FROM events
      LEFT JOIN users ON events.user_id = users.user_id;
    `;
  
    
    db.query(qr, (error, results) => {
      if (error) {
        console.error('Error executing query:', error);
        return res.status(500).json({ error: 'Internal Server Error' });
      }
  
      
      res.json(results);
    });
  });

  router.get('/:id',(req, res) => {
    const eventId=req.params.id;
    if(!eventId){
        console.log("Event ID is required");
        res.status(500).send("Event ID is required");
    }
    const qr = `
      SELECT events.event_name as EventName , events.event_location as Location, events.event_start as EventStart,
             events.event_end as EventEnd, events.deadline as EventDeadline, users.f_name as UserName, users.l_name as UserLastName
      FROM events
      LEFT JOIN users ON events.user_id = users.user_id WHERE events.event_id = ?;
    `;

    const values=[eventId];
  
    
    db.query(qr,values, (error, results) => {
      if (error) {
        console.error('Error getting specific event reserved by User:', error);
        return res.status(500).send('Internal Server Error'     );
      }
  
      res.json(results);
    });
  });



module.exports=router;