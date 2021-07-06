require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, language_hashes|
    #binding.pry
    language_hashes.each do |language, type_hash|
      type_hash.each do |key, type_value|
        #style_array = []
        if new_hash[language] == nil
        new_hash[language] = {key => type_value, :style => [] << style}
        #binding.pry
      else
        new_hash[language][:style].push(style)
      end

    end
  end
end
new_hash
end


#want
#{
#  :ruby => {
#    :type => "interpreted",
#    :style => [:oo]
#  },
#  :javascript => {
#    :type => "interpreted",
#    :style => [:oo, :functional]
#  },
#  :python => {
#    :type => "interpreted",
#    :style => [:oo]
#  },
#  :java => {
#    :type => "compiled",
#    :style => [:oo]
#  },
#  :clojure => {
#    :type => "compiled",
#    :style => [:functional]
#  },
#  :erlang => {
#    :type => "compiled",
#    :style => [:functional]
#  },
#  :scala => {
#    :type => "compiled",
#    :style => [:functional]
#  }
#}


#current
#languages = {
#  :oo => {
#    :ruby => {
#      :type => "interpreted"
#    },
#    :javascript => {
#      :type => "interpreted"
#    },
#    :python => {
#      :type => "interpreted"
#    },
#    :java => {
#      :type => "compiled"
#    }
#  },
#  :functional => {
#    :clojure => {
#      :type => "compiled"
#    },
#    :erlang => {
#      :type => "compiled"
#    },
#    :scala => {
#      :type => "compiled"
#    },
#    :javascript => {
#      :type => "interpreted"
#    }
#  }
#}
