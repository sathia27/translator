translator
==========

Translator gem

Usage:

gem  "gtranslate" #include gem in rails

Now language codes added for tamil, bengali, telugu, hindi, malayalam, kananda

How to include gem in ruby file?

First install 'gtranslate'

gem install gtranslate


create file eg: translate.rb

require 'gtranslate'
'love'.translate_to 'tamil'
'love'.translate_to 'Hindi'

Output:
அன்பு
प्यार


Note: This is unofficial api for translate.google.com. Which translates the given text to your preferred language from translate.google.com