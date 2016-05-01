require 'watir-webdriver'
require 'webdriver-user-agent'

driver = Webdriver::UserAgent.driver(:browser => :firefox, :agent => :iphone, :orientation => :portrait)
#browser = Watir::Browser.new :firefox
browser = Watir::Browser.new driver

Before do
  @browser = browser
end

at_exit do
  browser.close
end
