{join} = require 'path'
_ = require 'lodash'

rel = (path) ->
  join __dirname, '../', path

environment = process.env.NODE_ENV or 'development'

devHost = 'localhost'
config =
  development:
    app:
      name: 'component-sandbox'
      port: 4000
      ssl: false
        #key: rel 'tmp/certs/test.com.key'
        #cert: rel 'tmp/certs/test.com.crt'

paths =
  root:       rel '.'
  npmBin:     rel 'node_modules/.bin'
  scripts:    rel 'scripts/sources'

  app:        rel 'app'
  client:     rel 'app/client'
  public:     rel 'app/public'

  server:     rel 'app/server'
  load:       rel 'app/server/load'

path = (spec) ->
  parts = spec.split '/'
  root = parts.shift()
  throw new Error "'#{root}' is not a path in config.coffee" unless paths[root]?
  join paths[root], parts.join '/'

# sensible error message if env is wrong
unless config[environment]
  console.log "Could not find config for environment: [#{environment}].  Valid environments: [#{Object.keys(config).join ', '}]"
  process.exit(1)

global.config = _.merge config[environment], {
  env: environment
  paths: paths
  path: path
  require: (spec) ->
    require path spec
}

module.exports = global.config
