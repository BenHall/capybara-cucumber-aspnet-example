require File.join(File.dirname(__FILE__), 'cucumber-screenshot')

Capybara.default_driver = :selenium
Capybara.use_default_driver

After do |scenario|
  #take_screenshot("screenshot-#{Time.new.to_i}") #if scenario.failed?
end

World do 
  include ::Screenshots
  extend Capybara
end