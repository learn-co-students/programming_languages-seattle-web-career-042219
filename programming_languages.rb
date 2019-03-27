def reformat_languages(languages)
  language_hash = languages
  new_hash = {}
  #puts languages
  language_hash.each {|format, name|
    name.each { |type, discription|
      new_hash[type] = discription#, {style: format}
      new_hash[type][:style] = []
      new_hash[type][:style] <<  format
      #discription.each {|k, v|
      #  puts type
      #}
    }
    #new_hash[type] << format
  }
  new_hash[:javascript][:style] << :oo
  new_hash
end
