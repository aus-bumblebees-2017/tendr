require 'rails_helper'
RSpec.feature "Digital Wireframe", type: :feature do
  scenario "User sees the welcome page with appropriate links" do
    visit "/welcome/index"

    expect(page).to have_text("Welcome")
    expect(page).to have_link("Welcome")
    expect(page).to have_link("Show Deck")
    expect(page).to have_link("Show Details")
    expect(page).to have_link("Show History")
    expect(page).to have_link("Show User")
  end
  scenario "User sees the show deck page with appropriate links" do
    visit "/welcome/show_deck"

    expect(page).to have_text("Welcome")
    expect(page).to have_link("Welcome")
    expect(page).to have_link("Show Deck")
    expect(page).to have_link("Show Details")
    expect(page).to have_link("Show History")
    expect(page).to have_link("Show User")
  end
   scenario "User sees the show details page with appropriate links" do
    visit "/welcome/show_details"

    expect(page).to have_text("Welcome")
    expect(page).to have_link("Welcome")
    expect(page).to have_link("Show Deck")
    expect(page).to have_link("Show Details")
    expect(page).to have_link("Show History")
    expect(page).to have_link("Show User")
  end
   scenario "User sees the show history page with appropriate links" do
    visit "/welcome/show_history"

    expect(page).to have_text("Welcome")
    expect(page).to have_link("Welcome")
    expect(page).to have_link("Show Deck")
    expect(page).to have_link("Show Details")
    expect(page).to have_link("Show History")
    expect(page).to have_link("Show User")
  end
   scenario "User sees the show user page with appropriate links" do
    visit "/welcome/show_user"

    expect(page).to have_text("Welcome")
    expect(page).to have_link("Welcome")
    expect(page).to have_link("Show Deck")
    expect(page).to have_link("Show Details")
    expect(page).to have_link("Show History")
    expect(page).to have_link("Show User")
  end
end
