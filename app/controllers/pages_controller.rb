class PagesController < ApplicationController
  skip_authorization_check
  def home
     
    @title = "Home"
    
  end

  def about
    @title = "About"
    
  end

end
