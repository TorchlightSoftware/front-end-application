connect = require 'connect'
createServer = config.require 'load/createServer'

module.exports = (cb) ->

  port = (process.env.APP_PORT or config.app.port)

  # Web server
  app = connect()
  app.use connect.compress()
  app.use connect.responseTime()
  app.use connect.favicon()
  app.use connect.query()
  app.use connect.cookieParser()
  app.use connect.static config.paths.public

  server = createServer port, app

  # Good job, we made it!
  console.log "Server started on #{port}."
  cb()
