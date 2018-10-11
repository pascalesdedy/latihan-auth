# README

## live: https://pascales-latihan-auth.herokuapp.com/
## Endpoints:
1. POST /users/signup
2. POST /users/signin
3. GET /users

### Homework : please complete the App..

Steps :
1. Create new rails API app  $ rails new latihan-auth --api -T --database=postgresql
2. Modify gemfile
* gem 'bcrypt', '~> 3.1.7'
* gem 'knock'
* Gem ‘jwt’
* gem 'active_model_serializers'
3. $ bundle install
4. $ rails g model user username:string email:string password_digest:string
5. $ rails g controller users
6. $ rails g model article title:string body:text
7. $ rails db:create
8. $ rails db:migrate
9. $ rails g knock:install
10. $ rails generate knock:token_controller user
11. User model ~> has_secure_password
12. Application controller ~> include Knock::Authenticable
13. Modify knock.rb ( config.token_secret_signature_key = -> { Rails.application.credentials.read } )
14. Modify user_token_controller.rb (skip_before_action :verify_authenticity_token )
15. Adding and setup  secrets.yml , $ rails secret
14. Start writing CRUD method on user controller 
16. Modifying routes
17. Fire up rails server
18. POST localhost:3000/users/signup


{ "user":
	{
		"username":"didi",
		"email":"didi@email.com",
		"password":"123456",
		"password_confirmation":"123456"
	}
}

19. POST localhost:3000/users/signin , 

{ 
	"auth":
	{
		"email":"didi@email.com",
		"Password":"123456"
	}
}


20. Get users localhost:3000/users and Add jwt to header request