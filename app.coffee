
express = require('express')
app = express()
logger = require('morgan')
bodyParser = require('body-parser')


## Logger to log requests sent to the API.
app.use(logger('dev'))

## MAIN API
encryption_api = require('./api/encryption.coffee')
auth_api = require('./api/user_auth.coffee')

# Parse incoming requests data (https://github.com/expressjs/body-parser)
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: false }))

# Use the API.
app.use('/api/encryption',encryption_api)
app.use('/api/auth',auth_api)

## Other files we will use.
app.get '/', (req,res) ->
	res.send('HAHAHA')


app.listen 3000, () ->
	console.log('Listening on port 3000')
