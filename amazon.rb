require 'rubygems'
require 'watir'
require 'watir-webdriver'
require 'uri'
require "cgi"
require "base64"

########## Gets the Target URLs ###########
#LinkBrowser = Watir::Browser.new
#LinkBrowser.goto "http://www.amazon.in/s/ref=sr_nr_n_2?fst=as%3Aoff&rh=n%3A976389031%2Cn%3A1318160031%2Ck%3Abooks&keywords=books&ie=UTF8&qid=1464434492&rnid=976390031"

require "mysql"

begin
  con = Mysql.new '127.0.0.1', 'root', '', 'amazon'

  rs = con.query("SELECT `value` FROM url where `status`=0")

  rs.each_hash   do |row|
#    puts row.join("\s")

########## Gets the Data##########
#title-> book title
#img_url-> book image url
#content -> description section is basically the content
#details -> is the description section

    browser = Watir::Browser.new
    browser.goto row['value']

    title=browser.span :id => 'ebooksProductTitle'
   # print title.text

    author=browser.span :class => 'author notFaded'
   # print author.text

    rating=browser.div :id=> 'averageCustomerReviews'
   # print rating.text

    prices=browser.div :id => 'tmmSwatches'
   # print prices.text

    #cgi = CGI.new

    img_url=browser.img :id =>'ebooksImgBlkFront'
   # print img_url.src
    uri= URI.escape(img_url.src)

    content=browser.div :id =>'bookDescription_feature_div'
   # print content.text
    description = browser.iframe(:id => 'bookDesc_iframe').when_present(60).text
    #description=browser.div :id =>'productDescription'
   #print description

    details=browser.div :id =>'detail_bullets_id'
    #print details.text
if
    browser.image(:id => "ebooksSitbLogoImg").exists?
    browser.image(:id => "ebooksSitbLogoImg").click
    look_inside_text = browser.iframe(:id => 'sitbReaderFrame').when_present(90).text

else
  look_inside_text = 'NA'
end
    browser2 = Watir::Browser.new
    #browser2.goto "http://localhost:81/amazon/insertdata.php?title=test"
    browser2.goto "http://localhost/final_project_amazon/insertdata.php"<<"?title="<<title.text<< "&author="<<author.text<<"&rating="<<rating.text<<"&img_url="<<uri<<"&prices="<<prices.text<<"&content="<<content.text<<"&description="<<description.text<<"&details="<<details.text<<"&look_inside_text="<<Base64.encode64(look_inside_text.text)

    browser2.close
    browser.close

  end
end

