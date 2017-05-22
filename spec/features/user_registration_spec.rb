require 'rails_helper'
RSpec.feature "User Registration", type: :feature do
  scenario "As a user, I want to be able to register" do
    visit "/welcome/index"
    expect(page).to have_link("Register")
    click_on("Register")
    expect(page).to have_text("Sign up")
    assert page.has_checked_field?("Omnivore(Eats Everything)")

    page.choose("Vegetarian")
    assert page.has_checked_field?("Vegetarian")
    expect(page).to have_content("User name")
    fill_in("User name", :with => "tester")
    expect(find_field("User name").value).to eq "tester"
    expect(page).to have_content("Zipcode")
    fill_in("Zipcode", :with => "78703")
    expect(find_field("Zipcode").value).to eq "78703"
    expect(page).to have_content("Email")
    fill_in("Email", :with => "tester@hello.com")
    expect(find_field("Email").value).to eq "tester@hello.com"
    expect(page).to have_content("Password")
    fill_in("Password", :with => "password")
    expect(find_field("Password").value).to eq "password"
    expect(page).to have_content("Password confirmation")
    fill_in("Password confirmation", :with => "password")
    expect(find_field("Password confirmation").value).to eq "password"
    click_button 'Sign up'
    expect(page).to have_content("Swipe Away!")
    # save_and_open_page
    # save_and_open_screenshot
  end
  scenario "As a user, I can login" do
     visit "/welcome/index"
    expect(page).to have_link("Login")
    click_on("Login")
    expect(page).to have_content("Email")
    fill_in("Email", :with => "tester@hello.com")
    expect(find_field("Email").value).to eq "tester@hello.com"
    expect(page).to have_content("Password")
    fill_in("Password", :with => "password")
    expect(find_field("Password").value).to eq "password"
    click_button 'Log in'
    # save_and_open_page
    expect(page).to have_content("Swipe")
    expect(page.current_path).to eq ("/foods/index")
  end
  scenario "As a user, I can set my dietary preferences/restrictions" do
     visit "/welcome/index"
    click_on("Login")
    fill_in("Email", :with => "tester@hello.com")
    fill_in("Password", :with => "password")
    click_button 'Log in'
    expect(page).to have_link("Tester")
    click_link("Tester")
    expect(page).to have_link("Edit Profile")
    click_link("Edit Profile")

     save_and_open_page

  end
  xscenario "As a user, I want to add a zip code" do
  end
  xscenario "As a user, I want to recover lost password" do
  end
end
RSpec.feature "User Login", type: :feature do
  xscenario "As a user, I want to login." do

  end
  xscenario "As a user, I want to start swiping after logging in, or the last food I clicked 'take me' on." do

  end
  xscenario "As a user, I will be asked if I liked/ate at the last 'take me'" do

  end
end
RSpec.feature "User Interaction", type: :feature do

end
RSpec.feature "User Managememt", type: :feature do
end

