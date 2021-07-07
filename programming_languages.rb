def reformat_languages(languages)
  new_lang_hash = {}
  languages.each do |style, language|
    languages[style].each do |language, info|
      if new_lang_hash[language] == nil
        new_lang_hash[language] = info
      end
      if new_lang_hash[language][:style]
        new_lang_hash[language][:style].push(style)
      else
        new_lang_hash[language][:style] = []
        new_lang_hash[language][:style].push(style)
      end
    end
  end
  return new_lang_hash
end
