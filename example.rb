require 'rubygems'
require 'capybara'
require 'capybara/dsl'

include Capybara

Capybara.log 'test'

#Capybara.default_driver = :culerity
Capybara.default_driver = :selenium
Capybara.use_default_driver
Capybara.app_host = 'http://www.google.com'
puts Capybara.default_driver


visit '/'
fill_in 'q', :with => 'Test'
click_button 'Google Search'
puts page.source.length