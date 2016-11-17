require 'rails_helper'

feature "visiting the homepage" do
  xscenario "the user sees a login screen" do
    visit "/"

    within(".recent-games") do
      expect(page).to have_content most_recent_game.user_throw
      click_link("Show")
    end

    expect(page).to have_current_path game_path(most_recent_game)
  end

  xscenario "the user can login" do
    visit "/"
    click_link("New Game")
    expect(page).to have_current_path(new_game_path)

  end
end