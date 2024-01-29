const express = require('express');
const router = express.Router();
const db =require('../database/db');
const nodemailer=require('nodemailer');





      const transporter = nodemailer.createTransport({
        service:'gmail',
        host:'smtp.gmail.com',
        port:465,
        secure:true,
        auth:{
         user:'edingrazhda17@gmail.com',
         pass:'ntxj licu kosg qoiw'
         }
       });
      
router.post('/:id', async (req, res) => {
  const eventId = req.params.id;

  // Extract values from the request body
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

  // Insert the reservation details into the database
  const reservationQuery = `
    INSERT INTO events 
      (event_name, event_location, event_description, event_start, event_end, image_url, deadline, user_id) 
    VALUES (?, ?, ?, ?, ?, ?, ?, ?)
  `;

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

  // Execute the reservation query
  db.query(reservationQuery, values, async (error, results) => {
    if (error) {
      console.error('Error executing reservation query:', error);
      return res.status(500).send('Internal Server Error');
    }

    // Fetch user and event information for email
    const emailQuery = `
    SELECT events.event_name, events.event_location, events.event_start,
    events.event_end, events.deadline, users.email, users.f_name, users.l_name
FROM events
LEFT JOIN users ON events.user_id = users.user_id
WHERE events.event_id = ?;
    `;

    // Execute the query using the connection pool
    db.query(emailQuery, [eventId], async (err, result) => {
      if (err) {
        console.error('Error executing email query:', err);
        return res.status(500).json({ error: 'Internal Server Error' });
      }

      // Send email to the user who reserved the event
      const eventData = result[0]  ;
      const mailOptions = {
        from: 'edingrazhda17@gmail.com',
        to: eventData.email,
        subject: 'Event Reservation Confirmation',
        html: `
          <h1>Dear ${eventData.f_name} ${eventData.l_name},</h1>
          <p>You have successfully reserved the event "${eventData.event_name}" scheduled for ${eventData.event_start} to ${eventData.event_end}.</p>
          <p>Thank you for your reservation!</p>
          <p>Best regards,<br>Your Event Team</p>
        `,
      };

      try {
        // Send email and wait for it to complete
        let info = await transporter.sendMail(mailOptions);
        console.log('Email sent:', info.messageId);

        // Send a response indicating successful reservation and email sent
        res.json('Reservation successful. Email sent.');
      } catch (sendMailError) {
        console.error('Error sending email:', sendMailError);
        res.status(500).send('Internal Server Error');
      }
    });
  });
});

  
module.exports=router