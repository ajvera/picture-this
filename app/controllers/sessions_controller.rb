class SessionsController < ApplicationController

	def new
	end

	def create
      if user = User.authenticate(params[:email], params[:password])
        session[:current_user_id] = user.id
        redirect_to user_path
      end
    end

end