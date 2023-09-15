# require 'resque/server'

# if Rails.env.development?
#     Resque.redis = Redis.new(host: 'localhost', port: '6379')
# elsif Rails.env.production?
#     uri = URI.parse(Env['REDIS_URL'])
#     REDIS = Redis.new(host: uri.host, port: uri.port, passwoed: uri.password)
#     Resque.redis = REDIS
# end