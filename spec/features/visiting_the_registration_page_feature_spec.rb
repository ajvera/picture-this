require 'rails_helper'

context "visiting the registration page" do 
	
	before :all do 
		User.destroy_all
	end 

		scenario "the user registers and is redirected to their profile page" do 


			visit "/users/new"

			fill_in('First name', with: 'foo')
			fill_in('Last name', with: 'bar')
			fill_in('Username', with: 'foobar')
			fill_in('Email', with: 'foo@bar.com')
			fill_in('Password', with: 'password')

			click_button 'Create User'

			expect(page).to have_current_path user_path(User.last)

		end 
	end 

	context "when user registration fails" do 
		scenario "when user does not supply all necessary fields for registration" do 
			user = User.new(first_name: "bar", last_name: "foo", password: "password")

			visit "/users/new"

			click_button 'Create User'

			expect(page).to have_text("can't be blank")

		end 
	end 


