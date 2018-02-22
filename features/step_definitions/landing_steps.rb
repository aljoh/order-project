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
