Given(/^I am on the home page$/) do
    visit root_path
end

When(/^I press "([^"]*)"$/) do |button|
    click_button("Search")
end

Then(/^I should be on the "([^"]*)" page$/) do |page_name|
  expect(page).to have_content(page_name)
end

When(/^I press "([^"]*)"$/) do |button|
    click_button("Comment")
end

Then(/^I should be on the "([^"]*)" page$/) do |page_name|
  expect(page).to have_content(page_name)
end