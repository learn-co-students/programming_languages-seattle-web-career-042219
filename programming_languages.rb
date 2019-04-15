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
  new_hash = {}
  languages[:oo].merge(languages[:functional]).each do |lang, info|
  	new_hash[lang] = info
  	new_hash[lang][:style] = []
  	if languages[:oo].keys.include?(lang)
  		new_hash[lang][:style].push(:oo)
  	end
  	if languages[:functional].keys.include?(lang)
  		new_hash[lang][:style].push(:functional)
  	end
  end
end
