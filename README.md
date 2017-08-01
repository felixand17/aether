# Aether MRP
Aether Modular Resource Planning (MRP) is a modular ERP with detachable modules, allowing users to choose their own modules as needed, along with their business growth pace.


# Library / Frameworks
- Ruby Version 2.3.1
- Ruby on Rails version 5.0
- [QZ web print library](https://qz.io)


# Library for Backend
- PostgreSQL (Database)
- Devise (Authentication)
- Can Can Can (Role Management)
- Sidekiq (Background Job)
- RSpec (Unit Testing)
- GirlFactory (Unit Testing)
- modular_engine (Develop module)
- Rubocop
- Breakman
- Bullet (N + 1) Problem
- Newrelic
- Airbrake


# Service
- Sendgrid (For sending email)
- Slack connectivity


# Deployment
- Capistrano / Jenkins


# Library for Frontend
- Template erb
- HTML/CSS/JS
- Jquery V 3.1.1
- Bootstrap V 3.3.7
- Font Awesome V 4.7.0
- VueJS / Angular (Optional)


# Development
- snake case notaition
- Tab size: 2 for ruby
- Tab size: 4 for html


# Server
- Google Cloud / AWS


## Google Cloud Configuration

### Installing Ruby
    sudo apt-get update
    sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

### Installing with RBENV

    cd
    git clone https://github.com/rbenv/rbenv.git ~/.rbenv
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(rbenv init -)"' >> ~/.bashrc
    exec $SHELL

    git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
    echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
    exec $SHELL

    rbenv install 2.3.1
    rbenv global 2.3.1
    ruby -v

    gem install bundler

### Installing NGINX and Passenger

    gem install passenger --no-rdoc --no-ri

    passenger-install-nginx-module

    passenger-config validate-install

    passenger-memory-stats


### Starting NGINX

    sudo /opt/nginx/sbin/nginx

### Shutting Down NGINX

    ps auxw | grep nginx

    kill -9 [PID]

    ----

    sudo kill $(cat /opt/nginx/logs/nginx.pid)

### Restarting NGINX

    sudo kill $(cat /opt/nginx/logs/nginx.pid)

    sudo /opt/nginx/sbin/nginx

### Installing PostgreSQL

    sudo apt-get install postgresql postgresql-contrib libpq-dev

    sudo su - postgres

    createuser aether -s

    psql

    \password aether

    \q

