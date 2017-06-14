express = require('express')
Router = express.Router()

# Login API.
Router.post '/login', (req,res) ->

 # Get these fields from the request.
	password = req.body.password
	username = req.body.username

# Error Response to print out.
	errorResponse =
		success : false,

# Success Response to print out.
	successResponse =
		success : true,

# Check if the fields are undefined or defined.
	if username == undefined || password  == undefined

		# Error Response messages.
		errorResponse.message = 'Undefined Fields.'
		errorResponse.fields = ['username', 'password']

		res.send(errorResponse)

	else:

		res.send(successResponse)


# Register API. 
Router.post '/register', (req,res) ->

	## Data to get from the body.
	username = req.body.username
	password = req.body.password

	## Error response that gets sent.
	errorResponse =
		success : false

	# Success response that gets sent.
	successResponse =
		success : true

	# Check if defined ( true = not defined, false = defined. )
	not_defined = username == undefined or password == undefined

	# Not defined fields.
	if not_defined

		res.send(errorResponse)

	else

		res.send(successResponse)


module.exports = Router
