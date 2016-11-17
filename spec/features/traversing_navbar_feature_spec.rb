require 'spec_helper'

#Test navbar from home page, profile page, and views

feature "traversing the nav bar" do
  scenario "an unlogged in user can see a log in and register links on the homepage" do
    visit '/'
    expect(page).to have_link("Register", href: users_new_path)
    expect(page).to have_link("Login", href: sessions_new_path)

  end

  scenario "unlogged in user can click register link to render new sessions view" do
    click_link('Register')

    expect(page).to have_current_path sessions_new_path
  end

  # scenario "unlogged in user can click log in link to render new users view" do
  #   click_link('Login')
  # end

  scenario "a logged in user can see their profile page link and logout link" do
    user = User.new(first_name: "Matt", last_name: "Grimm", username: "MG", email: "m@gmail.com", password: "password")
    session[:user_id] = user.id

    visit '/'

    expect(page).to have_link("MG", href: users_show_path)
    expect(page).to have_link("Sign Out", href: sessions_delete_path)
  end

  scenario "a logged in user can click their profile link to render user's profile page" do
    user = User.new(first_name: "Matt", last_name: "Grimm", username: "MG", email: "m@gmail.com", password: "password")
    session[:user_id] = user.id

    click_link('MG')
    expect(page).to have_current_path users_show_path
  end

  scenario "a logged in user can click the logout link to delete their session" do
    user = User.new(first_name: "Matt", last_name: "Grimm", username: "MG", email: "m@gmail.com", password: "password")
    session[:user_id] = user.id

    click_link('MG')
    expect(page).should have_text("Login")
  end

end
