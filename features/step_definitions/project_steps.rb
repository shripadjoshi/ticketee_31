Given /^I am on the home page$/ do
 visit root_path
end

Then /^I should see "([^"]*)"$/ do |arg1|
  assert page.has_content?(arg1)
end

When /^I follow "([^"]*)"$/ do |arg1|
  click_link arg1
end

Then /^I fill in "([^"]*)" with "([^"]*)"$/ do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end

Then /^I press "([^"]*)"$/ do |arg1|
  click_button arg1
end

Then /^I should be on the project page for "([^"]*)"$/ do |arg1|
  assert page.has_content?(arg1)
end

Given /^there is a project called "([^"]*)"$/ do |arg1|
  Factory(:project, :name => arg1)
end

