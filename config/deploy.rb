# config valid only for Capistrano 3.1
lock '3.6.1'

set :application, 'aether'
set :repo_url, 'git@example.com:me/my_repo.git'

set :application, 'aether'
set :repo_url, 'git@github.com:greymavn/aether.git'

set :deploy_to, '/home/deploy/aether'

set :linked_files, %w{config/database.yml config/secrets.yml}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

set :keep_releases, 5

set :rbenv_type, :user
set :rbenv_ruby, '2.3.1'

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, 'deploy:restart'
  after :finishing, 'deploy:cleanup'
end
