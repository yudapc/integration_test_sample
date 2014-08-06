require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'

RSpec.configure do |config|
  config.filter_run focus: true
  config.run_all_when_everything_filtered = true
  config.order = "random"
end

Capybara.javascript_driver = :chrome

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.run_server = false

  config.default_wait_time = 30
  config.default_driver = :chrome
end
