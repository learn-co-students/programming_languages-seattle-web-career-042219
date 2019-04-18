def reformat_languages(languages)
  new_hash = {}
  
  languages.each{|style, list_of_langs|
    list_of_langs.each{ |name, info|
      if new_hash.has_key?(name)
        new_hash[name][:style] << style
      else 
        new_hash[name] = {:style => [style], :type => info[:type]}
      end
    }
  }
  return new_hash
end
