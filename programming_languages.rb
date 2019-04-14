require "pry"

def reformat_languages(languages)
  new_hash = {}
  languages.each do |styles, values|
    values.each do |name, attributes|
      attributes.each do |type, type_value|
        if defined?(new_hash[name][:style])
          new_hash[name][:style] << styles
        else
         new_hash[name] = {type => type_value, :style => [styles]}
       end
      end
    end
  end
  new_hash
end

# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#       :type => "interpreted"
#     },
#     :python => {
#       :type => "interpreted"
#     },
#     :java => {
#       :type => "compiled"
#     }
#   },
#   :functional => {
#     :clojure => {
#       :type => "compiled"
#     },
#     :erlang => {
#       :type => "compiled"
#     },
#     :scala => {
#       :type => "compiled"
#     },
#     :javascript => {
#       :type => "interpreted"
#     }
#
#   }
# }
#
# puts reformat_languages(languages)
