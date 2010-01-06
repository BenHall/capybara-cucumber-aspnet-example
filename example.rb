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
puts page.source.length