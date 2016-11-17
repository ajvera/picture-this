require 'rails_helper'

feature "visiting the profile page" do
  scenario "the user is on the profile page" do
  new_user = User.create!(first_name: "bloop", last_name: "bleep", username: "blup", email: "me@me.com", password: "hmm")
    visit "/users/#{new_user.id}"
    expect(page).to have_content("Welcome #{new_user.username}!")
  end

  scenario "the user is on the profile page" do
    new_user = User.create!(first_name: "bloop", last_name: "bleep", username: "blup", email: "me@me.com", password: "hmm")
    visit "/users/#{new_user.id}"
    expect(page).to have_content("Your albums")
  end

  scenario "the user is on the profile page" do
    new_user = User.create!(first_name: "bloop", last_name: "bleep", username: "blup", email: "me@me.com", password: "hmm")
    visit "/users/#{new_user.id}"
    expect(page).to have_content("Create new album")
  end

end
