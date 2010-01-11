def fill_in(name, value={})
  page.find("//input[@name='#{name}']").set('value[:with]')
end

def click_b(value)
  b = page.find("//input[@type='submit'][@value='#{value}']")
  b.click
end

Given /^I visit "([^\"]*)"$/ do |website|
  visit '/'
end
 
When /^I enter a search for "([^\"]*)"$/ do |term|
  fill_in 'q', :with => term
end
 
When /^I click the "([^\"]*)" button$/ do |button|
  click_b button
end
 
Then /^I should see the first result "([^\"]*)"$/ do |result|
  page.body.should have_content(result)
end
 
