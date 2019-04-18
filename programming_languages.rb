languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}



def reformat_languages(languages)
  # your code here
  new_language_format = {}

  languages.each {|style, language|
    language.each {|language, type|
      if new_language_format.has_key?(language)
        new_language_format[language][:style] << style
      else
        new_language_format[language] = type
        new_language_format[language][:style] = [style]
      end
    }
  }
 new_language_format
end
