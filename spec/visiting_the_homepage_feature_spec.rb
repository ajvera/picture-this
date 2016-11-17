require 'rails_helper'

feature "visiting the homepage" do
  before :all do
	User.destroy_all
	user = User.create!(first_name: "Aloe", last_name:"Vera", username:"alvera", email:"aloe@ve.ra",password:"password")
  end
  scenario "the user sees a login screen" do

    visit "/"
    expect(page).to have_content('Email Password')
    expect(page).to have_current_path root_path
  end

  scenario "the user can login" do
    visit "/"
    fill_in('Email', with: 'aloe@ve.ra')
    fill_in('Password', with: 'password')
    click_button("Login")

    expect(page).to have_current_path users_path(user)
    expect(session[:current_user_id]).to eq(user.id)

  end
end