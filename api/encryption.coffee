
express = require('express')
Router = express.Router()
Cryptr = require('cryptr')

# Encrypts data from key, and data sent to it.
Router.post '/encrypt', (req,res) ->

	# Data body to send.
	data = req.body.data
	key = req.body.key

	errorResponse = {
		success : false,
	}

	successResponse = {
		success : true
	}

	if data == undefined or key == undefined

		errorResponse.message = 'Undefined Fields.'
		errorResponse.fields = ['data', 'key']
		res.send(errorResponse)

	else

		# Cryptr function
		cryptr = new Cryptr(key)

		# Encrypted String.
		encryptedString = cryptr.encrypt(data);

		successResponse.encrypted = encryptedString
		res.send(successResponse)


module.exports = Router
