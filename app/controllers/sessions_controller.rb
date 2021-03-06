class SessionsController < ApplicationController
  
  skip_authorization_check 
  
  def new
    @title = "Login"
    
  end
  
  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if user.nil?
      flash.now[:error] = "Invalid email/password combination."
      @title = "Login"
      render 'new'
    else
      # Sign the user in and redirect to the user's show page.
      sign_in user
      redirect_to user
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
