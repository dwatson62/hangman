require 'word_salad'
require 'letter'

class Word
  attr_reader :letters, :value

  def initialize
    @value = 1.words.join
    @letters = @value.chars.map { |letter| Letter.new(letter) }
  end

  def display
    @letters.map(&:display).join
  end
end
