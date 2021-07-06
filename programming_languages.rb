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
reformatted = {}
  languages.each do |category, language|
    language.each do |name, attributes|
      reformatted[name] ||= attributes
      reformatted[name][:style] = []
      reformatted[name][:style] << category
    end
  end
  reformatted[:javascript][:style] << :oo
  reformatted
end