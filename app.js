var express = require('express')
var app = express()
var bodyParser = require('body-parser');
var morgan = require('morgan')
var methodOverride = require('method-override')
var engines = require('consolidate');
const axios = require('axios')
const path = require('path')
app.use('/assets', express.static(path.join(__dirname, 'assets')));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
  extended: true
}));

app.use(morgan('dev'))
app.use(methodOverride())
app.set('views', __dirname + '/views');
app.engine('html', engines.mustache);
app.set('view engine', 'html');
app.set('view engine', 'ejs')
app.get('/', (req, res) => { //เมื่อ เข้ามาที่ / จะเด้งไปยัง หน้า Login
  res.render('Login.html')
})

//เด้งไปยัง user.js
app.post('/login', (req, res) => {
  //หากต้องการเพิ่มข้อมูล
})

app.get('/register', (req, res) => { //แสดงหน้า เฉยๆ ไอเวรเอ้ย
  res.render('Registor.html') //จะไปเรียกแสดงหน้าต่าง ไฟล์ชื่อ Registor.ejs
})

app.post('/register', async (req, res) => { // เงื่อ นไขการสมัคร
  var body = req.body; //ดัีงข้อมูล จาก การสมัครทั้งหมด ไว้ๆ
  console.log(body)
  const insertData =  await axios.post('http://localhost:8000/api/Users', body)
  console.log(insertData)
  // alert(insertData);
  if (insertData) {
    res.redirect('/')
  } else {
    console.log("ERR");
  }
  // alert(insertData);
})

app.get('/wifimanager', (req, res) => {
  res.render('wifimanager.html');
})

app.get('/camera', (req, res) => {
  res.render('camera.html');
})

app.get('/arduino', (req, res) => {
  res.render('arduino.html');
})

// app.post('/parn', async (req, res) => { // เงื่อ นไขการสมัคร
//   var param = req.param; //ดัีงข้อมูล จาก การสมัครทั้งหมด ไว้ๆ
//   console.log(param)
//   const insertDataParn =  await axios.post('http://localhost:8000/api/parn', param)
//   console.log(insertDataParn)
//   // alert(insertData);
//   if (insertDataParn) {
//     res.redirect('/')
//   } else {
//     console.log("ERR");
//   }
//   // alert(insertData);
// })

app.get('/Showtime', async (req, res) => {
  const data = await axios.get("http://localhost:8000/api/Showtime/")
  console.log("check_get_showtime")
  console.log(data)
  res.render('showdatabase.html',data);

})

// function per(){
//   var test  = document.
// }

app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*')
  res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE')
  res.header('Access-Control-Allow-Headers', "Origin, X-Requested-With, Content-Type, Accept")
  res.header('Access-Control-Allow-Credentials', true)
  next()
})
console.log("app ok ")
module.exports = app