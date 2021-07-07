def reformat_languages(languages)
  # your code here
  new_hash = Hash.new
  languages.collect do |type, group|
    group.collect do |name, description|
      description.collect do |key, value|
        if new_hash.keys.include?(name)
          new_hash[name][:style] << type
        else
        new_hash[name] = {key => value, :style => [type]}
        end
      end
    end
  end
  new_hash
end
