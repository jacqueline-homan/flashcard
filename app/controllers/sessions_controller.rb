class SessionsController < ApplicationController
  def new
    
  end
 
  def create
    puts params
  	user = User.find_by_email(params[:session][:email])
  	if user.nil?
  	  redirect_to root_path
  	else
      	sign_in(user)
      	cookies.signed[:user_id] = user.id
      	redirect_to decks_path
    end
  end

  def destroy
  	cookies.delete(:user_id)
  	redirect_to root_path
  end
end
