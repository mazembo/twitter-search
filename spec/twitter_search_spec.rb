require "spec_helper"


feature "Searching twitter" do
  scenario "can retrieve results from Twitter" do
    visit "/"
    fill_in "search", with: "Johannesburg"
    click_button "Search"
    page.should have_content ("Statistics")

  end

end