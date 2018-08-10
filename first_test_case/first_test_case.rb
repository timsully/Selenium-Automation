# Configuring program to work with Selenium libraries
require "selenium-webdriver"

# Configuring the driver for Chrome browser
# Selenium::WebDriver::Chrome.driver_path="/path/to/chrome_driver_binary/chromedriver"
Selenium::WebDriver::Chrome.driver_path="/Users/tim_sullivan/Downloads/chromedriver"
driver = Selenium::WebDriver.for :chrome

driver.navigate.to "http://google.com"

element = driver.find_element(:name, 'q')
element.send_keys "hireme@abouttobeunemployed.com"
element.submit

puts driver.title

driver.quit
