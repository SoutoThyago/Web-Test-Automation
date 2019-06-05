# encoding: utf-8
require 'selenium-webdriver'
require 'watir'
require 'rspec'

Selenium::WebDriver::Chrome.driver_path="C:/chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize

Before do 
    # variavel global 
    @driver = driver
end