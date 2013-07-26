Translator
==========

Ruby library that translates text given in english text to your preferred language using google translate.

Usage:
<pre>
gem  "gtranslate" # To include gem in rails
</pre>
Now language codes added for tamil, bengali, telugu, hindi, malayalam, kananda

How to include gem in ruby file?

1. First install 'gtranslate'
<pre>
  gem install gtranslate
</pre>

2. create file eg: translate.rb
  ```ruby
  require 'gtranslate'
  puts 'love'.translate_to 'tamil'
  puts 'love'.translate_to 'Hindi'
  ```
  Output:
  -------
  <pre>
  அன்பு
  प्यार
  </pre>

Note: This is unofficial api for [Google] [1]. Which translates the given text to your preferred language from translate.google.com

[1]: http://translate.google.com "Google"
