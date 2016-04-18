# As a user
# When I visit "/"
# And I fill in the search form with 80203
# And I click "Locate"
# Then I should be on page "/search?zip=80203"
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
require "rails_helper"

RSpec.describe "user can search by zipcode" do
  it "returns list of 10 closest stations within 6 miles sorted by distance and limited to electric and propane" do
    visit "/"

    fill_in :q, :with => "80203"
    click_on "Locate"

    # expect(current_path).to eq "/search?zip=80203"
    #How to make params show up in route path?

    # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
    # And the stations should be limited to Electric and Propane
    # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
  end
end
