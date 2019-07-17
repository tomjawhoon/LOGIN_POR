var app   = require('./app')
var port  = 8000
var users = require('./routes/users')
var user  = require('./routes/user')
// var arduino  = require('./routes/user')

app.use('/api', users)
app.use('/api', user)
// app.use('/api', arduino)
var server = app.listen(port, function() {

    let host = server.address().address
    let port = server.address().port
    console.log('Listening on port ' + port );
});