config = module.exports

config.express =
	port : process.env.PORT or 3000
	ip   : "127.0.0.1"

config.PRODUCTION = process.env.NODE_ENV is "production"

config.BASE_URL   = if config.PRODUCTION then "http://codedoodl.es" else "http://#{config.express.ip}:#{config.express.port}"
config.BUCKET_URL = 'http://source.codedoodl.es'