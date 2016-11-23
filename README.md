#Steps

- rails new ticketstore
- Gemfile -> gem "mysql2", "~> 0.3.9"
- bundle install
- rake db:create
- rails generate scaffold User username:string email:string encrypted_password:string
- rake db:migrate
- rails generate scaffold Concert name:string description:string release_date:datetime
- rake db:migrate



### Doorkeeper example

- gem 'doorkeeper'
- bundle install
- rails generate doorkeeper:install


colocamos: 
resource_owner_authenticator

Intentamos acceder a la siguiente URL :
http://localhost:3000//oauth/authorize


Creamos nuestra aplicación.
Instalamos la gema Aout2



- http://localhost:3000/oauth/applications/new


App Id:
fd6f916e00eaf2868bba1206ba28785b66f9bf4f0f02d6b8fb462a5c85ad0b7e

Secret:
b8c48b6be1cdb5e247ad6e560a0b16c2c7ba21c1ddb3e2478281d87e2b8ccae6


https://github.com/doorkeeper-gem/doorkeeper/wiki/Enable-Refresh-Token-Credentials#doorkeeper-implementation

https://github.com/doorkeeper-gem/doorkeeper/wiki/Customizing-Token-Expiration#access-token

https://github.com/doorkeeper-gem/doorkeeper

https://github.com/doorkeeper-gem/doorkeeper/wiki/Customizing-routes

https://auth0.com/docs/tokens/refresh-token


[doorkeeper]: <https://github.com/doorkeeper-gem/doorkeeper>
