class WebSpellchecker< Spellchecker

def initialize()
	
end



def known(list)
    DictionaryWord.where('word in (:list)', list: list)
                  .order(count: :desc)
                  .pluck(:word)
  end
def lookup(word)
    DictionaryWord.find_by(word: word).try(:count)
  end

end
