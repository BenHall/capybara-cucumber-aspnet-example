require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require "selenium-webdriver"
 
include Capybara

Capybara.debug = true
Capybara.log 'test'

#Capybara.default_driver = :culerity
Capybara.default_driver = :selenium
#Selenium::WebDriver.for :chrome <-- didn't work
Capybara.use_default_driver
Capybara.app_host = 'http://www.bing.com'
puts Capybara.default_driver


visit '/'
#fill_in 'q', :with => 'Test'
#click_button 'Google Search'
locate("//input[@name='q']").set('Test')
# This also works:
  # b = locate('//input[@title="Google Search"]')
  # b.node.send_keys('ESC')
click_button 'sb_form_go'
puts page.source.length
