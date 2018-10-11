class HomeController < ApplicationController
before_action :authenticate_user,  only: [:auth]

  # Public method
  def index
    render json: { service: 'latihan-auth-api', status: 200, message: '/users/signup for signup and /users/signin for sign in', parameters: 'username, email, password, password_confirmation' }
  end
  
  # Authorized only method
  def auth
    render json: { status: 200, msg: "You are currently Logged-in as #{current_user.username}" }
  end


end
