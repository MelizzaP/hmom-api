set :stage, :production

server '104.236.19.23', user: 'mp', roles: %w{app db web}, port: 7853

role :app, %w{mp@104.236.19.23}
