require "spec/expectations"
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'cucumber/cli/options'
include Capybara

def empty_database()
  #puts "We could do whatever... ;)"
end

Before do
  Capybara.app_host = 'http://www.google.com'
  empty_database
end
 
at_exit do
  empty_database
end

