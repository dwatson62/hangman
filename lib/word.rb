require 'word_salad'

class Word
  attr_reader :letters, :value

  def initialize(word = nil)
    @value = word || 1.words.join
    @letters = @value.chars.map { |letter| Letter.new(letter) }
  end

  def display
    letters.map { |letter| "#{letter.display} " }.join
  end

  def solved?
    letters.all?(&:solved?)
  end
end
