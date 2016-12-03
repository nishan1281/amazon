#http://www.amazon.in/s/ref=sr_pg_1?rh=n%3A976389031%2Cn%3A%21976390031%2Cn%3A1318158031&ie=UTF8&qid=1464011117

require 'rubygems'
require 'watir'
require 'watir-webdriver'
require 'uri'
require "cgi"

client = Selenium::WebDriver::Remote::Http::Default.new
client.timeout = 180 # seconds – default is 60

#  b = Watir::Browser.new :firefox, :http_client => client

browser = Watir::Browser.new :firefox, :http_client => client
#Watir::Browser.new

category = "Arts_and_Photography"

targetURL = "http://www.amazon.in/s/ref=lp_1318158031_il_ti_stripbooks?rh=n%3A976389031%2Cn%3A%21976390031%2Cn%3A1318158031&ie=UTF8&qid=1472664334&lo=stripbooks"
$i = 0
$num = 3000
while $i < $num  do
  browser.goto targetURL

      as = browser.as :class =>'a-link-normal s-access-detail-page  a-text-normal'
  as.each do |a|
    puts a.href
    bookName = a.title
    puts bookName
    browser2 = Watir::Browser.new
    #http://localhost/final_project_amazon/inserturl.php?url=12345
    browser2.goto "http://localhost/workspace/amazon/amazon/inserturl.php?url"<<"="<<a.href<<"&bookName="<<bookName<<"&category="<<category
    browser2.close

  end

  targetElement=browser.a :id => 'pagnNextLink'
  targetURL = targetElement.href
  $i +=1

end

