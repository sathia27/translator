require 'rubygems'
require 'nokogiri'
require 'open-uri'
class Translator
  def self.translate(context, default = "ta")
    page = Nokogiri::HTML(open(URI.parse(URI.encode("http://translate.google.com/?langpair=en|#{default}&text=#{context}"))))
    result = page.search("#result_box")
    result.text
  end
end

