Given /^I am on the home page$/ do
 visit root_path
end

Then /^I should see "([^"]*)"$/ do |arg1|
  assert page.has_content?(arg1)
end

When /^I follow "([^"]*)"$/ do |arg1|
  #pending # express the regexp above with the code you wish you had
  click_link "New Project"
end

Then /^I fill in "([^"]*)" with "([^"]*)"$/ do |arg1, arg2|
  #pending # express the regexp above with the code you wish you had
  fill_in(arg1, :with => arg2)
end

Then /^I press "([^"]*)"$/ do |arg1|
  #pending # express the regexp above with the code you wish you had
  click_button "Create Project"
end

#Then /^I should see "([^"]*)"$/ do |arg1|
#  pending # express the regexp above with the code you wish you had
#end
