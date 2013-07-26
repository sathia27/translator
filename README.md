translator
==========

Translator gem

Usage:
<pre>
gem  "gtranslate" #include gem in rails
</pre>
Now language codes added for tamil, bengali, telugu, hindi, malayalam, kananda

How to include gem in ruby file?

First install 'gtranslate'

gem install gtranslate


create file eg: translate.rb
```ruby
require 'gtranslate'
'love'.translate_to 'tamil'
'love'.translate_to 'Hindi'
```
<pre>
Output:
அன்பு
प्यार
</pre>

Note: This is unofficial api for [Google] [1]. Which translates the given text to your preferred language from translate.google.com

[1]: http://translate.google.com "Google"
