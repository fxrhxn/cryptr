
express = require('express')
app = express()
logger = require('morgan')
bodyParser = require('body-parser')

## Logger to log requests sent to the API.
app.use(logger('dev'))

# Parse incoming requests data (https://github.com/expressjs/body-parser)
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: false }))

app.get '/', (req,res) ->
	res.send('HAHAHA')


app.listen 3000, () ->
	console.log('Listening on port 3000')
