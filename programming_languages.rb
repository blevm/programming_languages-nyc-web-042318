require "pry"

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
  languages_in_order = {}
  languages.each do |style, language|
    language.each do |language, type|
      type.each do |type, type_value|
        if languages_in_order[language] = nil
          languages_in_order[language] = {}
        end
        languages_in_order[language] = {type => type_value}
        languages_in_order[language][:style] = Array.new
        (languages_in_order[language][:style]) << style
        if (languages_in_order[language][:style]).include?(style) === false
          (languages_in_order[language][:style]).push(style)
        end
      end
    end
  end
  return languages_in_order
end

binding.pry
