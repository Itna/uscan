Given(/^I am on the home page$/) do
    visit root_path
end

When(/^I press "([^"]*)"$/) do |button|
    click_button(button)
end

Then(/^I should be on the "([^"]*)" page$/) do |page_name|
  expect(page).to have_content(page_name)
end


When(/^I click on the "([^"]*)" link$/) do |page_name|
    click_link page_name
end

Given(/^I am on the comment page$/) do
  visit forms_path
end

