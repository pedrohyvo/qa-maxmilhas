require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara/dsl'
require 'site_prism'
require 'pry'

World Capybara::DSL

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
    Capybara.current_driver = :selenium
    config.default_max_wait_time = 20
    Capybara.page.driver.browser.manage.window.maximize
end
