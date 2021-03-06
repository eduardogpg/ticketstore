# Ouath example

This is a simple API created with Rails, Within the application, the OAUth protocol is used, to restrict access to unauthorized users.
For the OAUth protocol is used Doorkeeper gem. Read the complete documentation [doorkeeper documentation]

Mandatory technologies and gems.

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

### Consume the API

Firts of all, you need to create a new user in the plattform, please go to the next url.

- http://localhost:3000/users/new

When you have created the necessary users you need to create an application. For create the applications is very easy, go to the next url.

- http://localhost:3000/oauth/applications/new

When you have created the application keep in mind that you need to store:
	* app id
	* secret
	* callback url


Very easy, if you check your database you will notice 3 new tables
	- oauth_access_grants
	- oauth_access_tokens
	- oauth_applications

Very cool.


#### Test the API

ok, if you want the resource of nex url you need to get your token

- localhost:3000/api/concerts

For get the toke we need to install a gem, oauth2 gem.


```Ruby
gem install oauth2
```

Ok, now in a new terminal let's start the gem


```
irb -r oauth2

app = "fd6f916e00eaf2868bba1206ba28785b66f9bf4f0f02d6b8fb462a5c85ad0b7e"
secret = "b8c48b6be1cdb5e247ad6e560a0b16c2c7ba21c1ddb3e2478281d87e2b8ccae6"

client = OAuth2::Client.new(app, secret, site:"http://localhost:3000/")
token = client.password.get_token('username', 'password')

puts token.token
puts token.refresh_token

new_token = token.refresh! if token.expired?
puts new_token

```

As we observed in the last step we get the token, with this token will be enough so that we can get the list of concert.

Make the following request

-  http://localhost:3000/api/concerts?access_token=token

Cool, now you have all the concerts in your data base.

	
[doorkeeper documentation]: <https://github.com/doorkeeper-gem/doorkeeper>
[doorkeeper implementation]: <https://github.com/doorkeeper-gem/doorkeeper/wiki/Enable-Refresh-Token-Credentials#doorkeeper-implementation>
[doorkeeper endpoints]: <https://github.com/doorkeeper-gem/doorkeeper/wiki/API-endpoint-descriptions-and-examples>
[customizing token expiration]: <https://github.com/doorkeeper-gem/doorkeeper/wiki/Customizing-Token-Expiration#access-token>
[customizing routes]: <https://github.com/doorkeeper-gem/doorkeeper/wiki/Customizing-routes>
[ouath refresh]: <https://auth0.com/docs/tokens/refresh-token>
[ouath gem]: <https://github.com/intridea/oauth2>


