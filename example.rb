require 'rubygems'
require 'capybara'
require 'capybara/dsl'

include Capybara

Capybara.debug = true
Capybara.log 'test'

#Capybara.default_driver = :culerity
Capybara.default_driver = :selenium
Capybara.use_default_driver
Capybara.app_host = 'http://www.google.com'
puts Capybara.default_driver


visit '/'
#fill_in 'q', :with => 'Test'
#click_button 'Google Search'
locate("//input[@name='q']").set('Test hack')
# This also works:
  # b = locate('//input[@title="Google Search"]')
  # b.node.send_keys('ESC')
click_button 'Google Search'
puts page.source.length
