class SessionsController < ApplicationController

	def new
	end

	def create
      if user = User.authenticate(params[:email], params[:password])
        session[:current_user_id] = user.id
        redirect_to root_url
      end
    end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to root_url, :notice => "Logged Out!"
  end

end
