#http://www.amazon.in/s/ref=sr_pg_1?rh=n%3A976389031%2Cn%3A%21976390031%2Cn%3A1318158031&ie=UTF8&qid=1464011117

require 'rubygems'
require 'watir'
require 'watir-webdriver'
require 'uri'
require "cgi"
require "nokogiri"

client = Selenium::WebDriver::Remote::Http::Default.new
client.timeout = 180 # seconds – default is 60

#  b = Watir::Browser.new :firefox, :http_client => client

browser = Watir::Browser.new :firefox, :http_client => client
#Watir::Browser.new



targetURL = "https://www.amazon.in/Inferno-Ebook-Sampler-Dan-Brown-ebook/dp/B00BUB2X6W?ie=UTF8&qid=1468693446&ref_=lp_1318158031_1_4&s=books&sr=1-4"


browser.goto targetURL
browser.image(:id => "sitbLogoImg").click
itext = browser.div(:id => "sitbReaderPageScroll").text
puts itext
