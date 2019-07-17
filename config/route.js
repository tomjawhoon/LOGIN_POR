
var mysql = require('mysql')
var con   = mysql.createConnection({
    host        : '178.128.219.76',
    user        : 'root',
    password    : 'test',
    database    : 'MTEC_TEST',
    port        : '3306'
})

con.connect((err) => {
    if(err) throw err
    console.log("Server was connected!")
})

module.exports = con