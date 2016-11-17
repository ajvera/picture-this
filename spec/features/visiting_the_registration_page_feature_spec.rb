require 'rails_helper'

feature "visiting the registration page" do 
	
	context "when new user registers" do 
		new_user = User.create!(first_name: "foo", last_name: "bar", username: "foobar", email: "foo@bar.com", password: "password")

		visit "/users/new"

		click_button 'Create User'

		expect(page).to have_current_path user_path(new_user)

	end 

	context "when user registration fails" do 
		new_user = User.create!(first_name: "foo", last_name: "bar", email: "foo@bar.com", password: "password")

		visit "/users/new"

		click_button 'Create User'

		expect(page).to have_text("can't be blank")

	end 

end 
