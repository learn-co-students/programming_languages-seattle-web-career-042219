def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, values| #values = {:ruby =>{}, :javascript =>{}
    values.each do |p_language, attribute|
      if new_hash.include?(p_language)
        new_hash[p_language][:style] << style
      else
        new_hash[p_language] = attribute
        new_hash[p_language][:style] = [style]
      end
    end
  end
  new_hash
end
