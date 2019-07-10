require "pry"

# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },

## goes to ##

# {
#   :ruby => {
#     :type => "interpreted",
#     :style => [:oo]
#   },


def reformat_languages(languages)
  new_hash={}
  languages.each do |language_type, language_hash |
    #:oo, {:ruby => {...}}
    language_hash.each do |language, attribute_hash|
       #:ruby, {:type => "interpreted"}
      attribute_hash.each do |attribute, value|
         #:type, "interpreted"
        if new_hash[language].nil?
          new_hash[language]={}
        end
        new_hash[language][:style] ||= []
        new_hash[language][:style] << language_type
        if new_hash[language][attribute].nil?
          new_hash[language][attribute]=value
        end
      end
    end
  end
  new_hash
end
