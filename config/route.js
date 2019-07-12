var mysql = require('mysql')
var con   = mysql.createConnection({
    host        : 'localhost',
    user        : 'root',
    password    : 'test',
    database    : 'MTEC_TEST',
    port        :  8090,
})

con.connect(function(err) {
    if(err){
        console.log(err)
        throw err
    }
    console.log("Server was connected!")
})

module.exports = con