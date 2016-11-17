require 'rails_helper'

#Test navbar from home page, profile page, and views

feature "traversing the nav bar:" do
  scenario "an unlogged in user can see a log in and register links on the homepage" do
    visit '/'
    expect(page).to have_link("Register", href: new_user_path)
    expect(page).to have_link("Login", href: new_session_path)

  end

  scenario "unlogged in user can click register link to render new sessions view" do
    click_link('Register')

    expect(page).to have_current_path new_user_path
  end

  scenario "unlogged in user can click log in link to render new users view" do
    click_link('Login')
  end

  scenario "a logged in user can see their profile page link and logout link" do
    user = User.create(first_name: "Matt", last_name: "Grimm", username: "MG", email: "m@gmail.com", password: "password")
    session[:current_user_id] = user.id

    visit '/'

    expect(page).to have_link("MG", href: user_path(current_user))
    expect(page).to have_link("Sign Out", href: session_path(session[:current_user_id]), method: :delete)
  end

  scenario "a logged in user can click their profile link to render user's profile page" do
    user = User.create(first_name: "Matt", last_name: "Grimm", username: "MG", email: "m@gmail.com", password: "password")
    session[:current_user_id] = user.id

    click_link('MG')
    expect(page).to have_current_path user_path(current_user)
  end

  scenario "a logged in user can click the logout link to delete their session" do
    user = User.create(first_name: "Matt", last_name: "Grimm", username: "MG", email: "m@gmail.com", password: "password")
    session[:current_user_id] = user.id

    click_link('Logout')
    expect(page).should have_text("Login")
  end

end
