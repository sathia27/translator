class String
  def translate_to language
    html_dom_from_google = Gtranslate.api_call_to_google_with language, self
    result = Gtranslate.parse_result_from_response html_dom_from_google
  end
end
