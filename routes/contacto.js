var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var contactoModel =require('../models/contactoModel');

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('contacto', {
    isContacto: true
  });
});

router.post('/', async (req, res, next) => {

  var nombre = req.body.nombre;
  var email = req.body.email;
  var tel = req.body.tel;
  var mensaje = req.body.mensaje;

console.log(req.body)

  var obj = {
    to: 'mellizamala@gmail.com',
    subject: 'CONTACTO WEB',
    html: nombre + " se contacto a través de la web y quiere más informacion a este correo :" + email + ". <br> Además, hizo este comentario: " + mensaje + ". <br> Su tel es: " + 
    tel
  }


  var transport = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  });

  var info = await transport.sendMail(obj);
var contacto = await contactoModel.insertContacto(req.body)

  res.render('contacto', {
    isContacto: true,
    message: 'Mensaje enviado correctamente'
  });
});

module.exports = router;
