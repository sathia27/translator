require 'rubygems'
require 'nokogiri'
require 'open-uri'
String.class_eval do
  def translate_to language
    begin
		  code = code_for language
      page = Nokogiri::HTML(open(URI.parse(URI.encode("http://translate.google.com/?langpair=en|#{code}&text=#{self}"))))
		  result = page.search("#result_box")
		  result.text
    rescue => e
      puts e
      puts 'Some problem to translate. Please try again later'
      exit
    end
  end
  def code_for language
    language = language.downcase
    language_codes = {'tamil' => 'ta', 'bengali' => 'bn', 'telugu' => 'te', 'malayalam' => 'ml', 'kannada' => 'kn', 'gujarati' => 'gu', 'hindi' => 'hi'}
    language_codes[language]
  end
end
