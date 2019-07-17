var express = require("express");
var router = express.Router();
var doQuery = require('../Utils/doQuery')
var axios = require("axios");
router
  .route("/users") //ติดต่อฐานข้อมูลทั้งหมดเลย
  .get((req, res) => {
    var sql = "SELECT * FROM User" //ดึงค่ามา จาก database 
    doQuery(sql).then((resp) => {
        res.json(resp)
      })
      .catch(err => [
        res.json({
          msg: err
        })
      ])
  })

  .post((req, res) => {
    var body = req.body
    var sql = `INSERT INTO User(firstname, lastname, username, password, email) 
            VALUES('${body.firstname}', '${body.lastname}', '${body.username}', '${body.password}','${body.email}')`;
    doQuery(sql).then(resp => {
      res.json({
        message: 'success',
        data: resp
      })
      // res.redirect('/')   
    }).catch(err => {
      res.json({
        message: err
      })
    })
  })

router
  .route('/login')
  .post((req, res) => { //ต่อเนื่องมาจากหน้้า
    var body = req.body
    const data =  axios.get("http://localhost:8000/api/Showtime/");
    const sql = `SELECT username,password FROM User WHERE username='${body.username}' AND password='${body.password}'` //ดึงข้อมูล จากทั้ง user . password
    console.log(sql)
    doQuery(sql).then(resp => {
            console.log(resp);
            if(resp == '') {
              console.log("error")
              // res.redirect('/Registor')

            } else if(resp[0].username && resp[0].password){
              res.render('showdatabase.html',data)
              console.log("complete")
            }
      // res.render('showdatabase.html',data);
    })
  })

router
  .route('/Showtime/')
  .get((req, res) => {
    var sql = `SELECT * FROM event1`;
    console.log("Check_showtime")
    doQuery(sql).then(resp =>
        res.json(resp))
      .catch(err => {
        res.json({
          message: err
        });
      });
  });


router
  .route('/arduino')
  .post((req, res) => {
    var body = req.body
    var sql = `INSERT INTO event1(device_id, Token) 
            VALUES('12345667' , '1111111111')`;
    doQuery(sql).then(resp => {
      res.json({
        message: 'success',
        data: resp
      })  
    }).catch(err => {
      res.json({
        message: err
      })
    })
  })
  
  

module.exports = router;