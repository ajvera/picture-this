require 'rails_helper'

feature "visiting the registration page" do 
	context "when new user registers" do 
	
	new_user = User.create!(first_name: "foo", last_name: "bar", username: "foobar", email: "foo@bar.com", password: "password")

	visit "/users/new"

	within(".form-group")
	end 

	
	end 

end 
