class SessionsController < ApplicationController

	def new
    p "************"
    p current_user
    p "************"
	end

	def create
	  user = User.find_by(email: params[:email]) 
      if user.authenticate(params[:password])
        session[:current_user_id] = user.id
        redirect_to user_path(user)
      end
    end

  def destroy
    session.delete(:current_user_id)
    @current_user = nil
    redirect_to root_url, :notice => "Logged Out!"
  end

end
