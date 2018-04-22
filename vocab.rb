$test = 'hello'

# Could just be a Hash...
class Vocabulary
  attr_accessor :jp_word, :roumaji, :english_translation

  def initialize(jp_word, roumaji, english_translation)
    @jp_word = jp_word
    @roumaji = roumaji
    @english_translation = english_translation
  end 
end