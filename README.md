#Steps

- rails new ticketstore
- Gemfile -> gem "mysql2", "~> 0.3.9"
- bundle install
- rails generate scaffold User username:string email:integer encrypted_password:string
- rake db:create
- rails generate scaffold User username:string email:integer encrypted_password:string
- rake db:migrate