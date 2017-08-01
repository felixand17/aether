set :stage, :staging

server '104.196.183.120', user: 'deploy', roles: %w{web app}
