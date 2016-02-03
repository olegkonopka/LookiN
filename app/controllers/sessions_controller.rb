class SessionsController < ApplicationController
  def new
  end
   def create
    	@username = User.find_by(email: params[:session][:email].downcase)
	    if(User.find_by_username(params[:id]))
	  		@username= params[:id]
	  	else
	  		redirect_to root_path, :notice=> "User not found!!!"
	  	end	
   end
end