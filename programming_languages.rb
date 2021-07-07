require 'pry'

def reformat_languages(languages)
  new_hash = {}

  languages.each do |type, name|
    name.each do |key, value|
      new_hash[key] = value
      new_hash[key][:style] = []
      new_hash[key][:style] << type
    end
  end
new_hash[:javascript][:style] << :oo
new_hash
end
