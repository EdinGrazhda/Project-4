const express = require('express');
const db = require('../database/db');
const router = express.Router();

router.post('/', (req, res) => {
    const {
        event_name,
        event_location,
        event_description,
        event_start,
        event_end,
        image_url,
        deadline,
        user_id
    } = req.body;

    if (!event_name) {
        console.log('Event name is required');
        return res.status(400).send('Event name is required');
    }

    const sql = "INSERT INTO events (event_name, event_location, event_description, event_start, event_end, image_url, deadline, user_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

    const values = [
        event_name,
        event_location,
        event_description,
        event_start,
        event_end,
        image_url,
        deadline,
        user_id
    ];

    db.query(sql, values, (err, result) => {
        if (err) {
            console.error('Error inserting event details:', err);
            res.status(500).send('Internal Server Error');
            return;
        }

        res.json('Event inserted successfully!');
    });
});


router.get('/',(req,res)=>{

    const sql = 'SELECT * FROM events';

    db.query(sql,(err,result)=>{
        if(err){
            console.log("Can't get events list:",err);
            res.status(500).send('Internal Server Error');
            return;
        }
        res.json(result);
    });
});

router.get('/:id',(req,res)=>{
    const eventId=req.params.id;

    if(!eventId){
        console.log('Event ID is required !');
        res.status(400).send('Event ID is required')
    }

    const sql='SELECT * FROM events where event_id=?'
    const values =[eventId];

    db.query(sql,values,(err,result)=>{
        if(err){
            console.log('Error to get the specific event');
            res.send(500).status('Internal Server Error');
            return
        }
        res.json(result)
    })

})

router.put('/:id', (req, res) => {
    const eventId = req.params.id;
    const {
        event_name,
        event_location,
        event_description,
        event_start,
        event_end,
        image_url,
        deadline,
        user_id
    } = req.body;

    if (!event_name || !event_location || !event_description || !event_start || !event_end || !image_url || !deadline || !user_id) {
        console.log("Fill in the required fields");
        return res.status(400).send('Fill in the required fields');
    }

    const sql = 'UPDATE events SET event_name=?, event_location=?, event_description=?, event_start=?, event_end=?, image_url=?, deadline=?, user_id=? WHERE event_id = ?';
    const values = [
        event_name,
        event_location,
        event_description,
        event_start,
        event_end,
        image_url,
        deadline,
        user_id,
        eventId // Add the eventId as the last value
    ];

    db.query(sql, values, (err, result) => {
        if (err) {
            console.error("Error updating event: ", err);
            res.status(500).send('Internal Server Error!');
            return;
        }
        res.json('Event is updated successfully!')
    });
});

router.delete('/:id',(req,res)=>{
    const eventId=req.params.id;
    if(!eventId){
        console.log('Event ID is required');
        res.status(400).send('Event ID is required');
    }
    const sql = 'DELETE FROM events where event_id = ?';
    const values = [eventId];

    db.query(sql,values,(err,result)=>{
        if(err){
            console.log('Error deleting event:',err);
            res.status(500).send('Internal Server Erro');
            return
        }
        res.json('Event is deleted successfully !')
    })

})


module.exports = router