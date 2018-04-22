require 'yaml'

class Classroom
  def initialize
    @vocab_list = YAML.load(File.read("./genki/genki_i/chapter_one/vocab.yml"))
  end

  def select_vocab_word
    return @vocab_list.sample
  end

  def teach_vocab_word(word)
    message = "#{word['jp_word']}\n"
    message += "#{word['roumaji']}\n"
    message += "Meaning: #{word['english_translation']}\n"
    return message
  end
end