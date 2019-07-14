// var mysql = require('mysql')
// var con   = mysql.createConnection({
//     hosts        : '178.128.219.76',
//     user        : 'root',
//     password    : 'test',
//     database    : 'MTEC_TEST',
//     port        :  3306,
// })
// con.connect(function(err) {
//     if(err){
//         console.log(err)
//         throw err
//     }
//     console.log("Server was connected!")
// })


// module.exports = con

var mysql = require("mysql");
var pool = mysql.createPool({
    host: '178.128.219.76',
    user:'root',
    password:'test',
    database:'MTEC_TEST',
    connectionLimit : 10, 
});

var query = function(sql, options, callback) {
    console.log(sql, options, callback);
    if (typeof options === "function") {
        callback = options;
        options = undefined;
    }
    pool.getConnection(function(err, conn){
        if (err) {
            callback(err, null, null);
        } else {
            conn.query(sql, options, function(err, results, fields){
                // callback
                callback(err, results, fields);
            });
            // release connection。
            conn.release();
        }
    });
};

module.exports = query;




