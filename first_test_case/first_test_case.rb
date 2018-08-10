# Configuring program to work with Selenium libraries
require "selenium-webdriver"

# Configuring the driver for Chrome browser
# Selenium::WebDriver::Chrome.driver_path="/path/to/chrome_driver_binary/chromedriver"
Selenium::WebDriver::Chrome.driver_path="/Users/tim_sullivan/Downloads/chromedriver"
driver = Selenium::WebDriver.for :chrome

# Google Chrome browser opens up and navigates to the link specified below
driver.navigate.to "http://google.com"

element = driver.find_element(:name, 'q')
element.send_keys "hireme@abouttobeunemployed.com"

# Targets the source and find <type="submit">
element.submit

# Returns the title of the plugin
puts driver.title

driver.quit
