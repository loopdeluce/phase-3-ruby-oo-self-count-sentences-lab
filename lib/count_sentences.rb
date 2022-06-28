require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    splitSentence = self.split(/\.|\?|!/)
    noEmptySentences = splitSentence.filter{ |word| !word.empty?}
    noWhiteSpace = noEmptySentences.map(&:strip)
    noWhiteSpace.length
  end
end

