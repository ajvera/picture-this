require 'rails_helper'
before :all do
	User.destroy_all
	User.create(first_name: "Aloe", last_name:"Vera", username:"alvera", email:"aloe@ve.ra",password:"password")
end

feature "visiting the homepage" do
  scenario "the user sees a login screen" do

    visit "/"
    expect(page).to have_content('Email Password')

    expect(page).to have_current_path(root_path)
  end

  xscenario "the user can login" do
    visit "/"
    fill_in('Email', with: 'aloe@ve.ra')
    fill_in('Password', with: 'password')
    click_button("Login")

    expect(page).to have_current_path()

  end
end