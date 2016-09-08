require './lib/word'
require 'byebug'

class Game
  attr_reader :word

  def initialize
    @word = Word.new
  end

  def guess_a_letter(guess)
    word.letters.each do |letter|
      return letter.solve if letter.value == guess
    end
    puts 'Better luck next time'
  end
end
