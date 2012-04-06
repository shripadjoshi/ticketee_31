Given /^I am on the home page$/ do
 visit root_path
end

Then /^I should see "([^"]*)"$/ do |content|
  assert page.has_content?(content)
end

When /^I follow "([^"]*)"$/ do |link|
  click_link link
end

Then /^I fill in "([^"]*)" with "([^"]*)"$/ do |text, value|
  fill_in(text, :with => value)
end

Then /^I press "([^"]*)"$/ do |button|
  click_button button
end

Then /^I should be on the project page for "([^"]*)"$/ do |content|
  assert page.has_content?(content)
end

Given /^there is a project called "([^"]*)"$/ do |name|
  FactoryGirl.create(:project, :name => name)
end

