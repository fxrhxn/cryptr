express = require('express')
Router = express.Router()

Router.post '/register', (req,res) ->
  res.send('Registered!')


module.exports = Router
