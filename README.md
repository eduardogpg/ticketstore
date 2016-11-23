# Ouath example

This is a simple rails app using oauth method for API, the gem doorkeeper is integrated in this project.

Mandatories technologies and gems.

  - Rails 4
  - Doorkeeper
  
Optional technologies and gems.
	
  * mysql2
  * bcrypt

### Run Application

- bundle install
- rake db:create
- rake db:migrate
- rails server

### Test authorization

First generate a new user 

- http://localhost:3000/users/new

Generate a new App

- http://localhost:3000/oauth/applications/new


Store the app id and the secret.

Install Ouath gem

```Ruby
gem install oauth2
```

If you want see all the documentantion of [ouath gem]


```
app = "bd20f2f0c3554a872fd2de7d05520d1123edc35ee3ee969aed7142fa35dae102"
secret = "c281e0b1a4f2c130c8877f977e7bbd614de4fe3dfb32c17ab22e42e681ada1c9"

client = OAuth2::Client.new(app, secret, site:"http://localhost:3000/")
token = client.password.get_token('username', 'password')

puts token.token
puts token.refresh_token

new_token = token.refresh! if token.expired?
puts new_token

```

When you have the access token you just need create a request to with the next struct
  -  http://localhost:3000/api/concerts?access_token=token



	
[doorkeeper documentation]: <https://github.com/doorkeeper-gem/doorkeeper>
[doorkeeper implementation]: <https://github.com/doorkeeper-gem/doorkeeper/wiki/Enable-Refresh-Token-Credentials#doorkeeper-implementation>
[doorkeeper endpoints]: <https://github.com/doorkeeper-gem/doorkeeper/wiki/API-endpoint-descriptions-and-examples>
[customizing token expiration]: <https://github.com/doorkeeper-gem/doorkeeper/wiki/Customizing-Token-Expiration#access-token>
[customizing routes]: <https://github.com/doorkeeper-gem/doorkeeper/wiki/Customizing-routes>
[ouath refresh]: <https://auth0.com/docs/tokens/refresh-token>
[ouath gem]: <https://github.com/intridea/oauth2>


