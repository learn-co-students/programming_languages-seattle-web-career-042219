require 'pry'


def reformat_languages(languages)
  # your code here
  new_hash = {}
  array = []
  languages.each do |style, language|
    language.each do |lang, type|
      if new_hash.key?(lang)
        array = new_hash[lang][:style]
        array << style
        new_hash[lang][:style] = array
        array = []
      else
        array << style
        new_hash[lang] = {:type => type[:type], :style => array }
        array = []
      end
    end
  end
  new_hash
end
