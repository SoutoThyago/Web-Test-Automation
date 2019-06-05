# encoding: utf-8
require 'selenium-webdriver'
require 'watir'
require 'rspec'

# Default chrome

#browser = Watir::Browser.new
#browser.driver.manage.window.maximize

#Before do 
    # variavel global chamada @browser link no browser
#    @browser = browser
#end


Selenium::WebDriver::Chrome.driver_path="C:/chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize

Before do 
    # variavel global @browser linkada no browser
    @driver = driver
end