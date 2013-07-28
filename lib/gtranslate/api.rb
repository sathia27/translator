class Gtranslate
  class << self
    def code_for language
      language = language.downcase
      language_codes = {'tamil' => 'ta', 'bengali' => 'bn', 'telugu' => 'te', 'malayalam' => 'ml', 'kannada' => 'kn', 'gujarati' => 'gu', 'hindi' => 'hi'}
      language_codes[language]
    end
    
    def url_for code, text
      "http://translate.google.com/?langpair=en|#{code}&text=#{text}"
    end
    
    def api_call_to_google_with language, text
      code = code_for language
      begin
        url = URI.parse(URI.encode(url_for(code, text)))
        Nokogiri::HTML(open(url))
      rescue => e
        puts "[Error]: " + e
      end
    end

    def parse_result_from_response doc
      doc.search("#result_box").text
    end
  end
end
