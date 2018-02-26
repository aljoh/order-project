Given("the following orders exists") do |table|
  table.hashes.each do |hash|
    FactoryBot.create(:order, hash)
  end
end

Given("I visit the landing page") do
  visit root_path
end

Given("show me the page") do
  save_and_open_page
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Given("I fill in {string} with {string}") do |field, value|
  fill_in field, with: value
end

Given("I click on {string}") do |button|
  click_link_or_button button
end
