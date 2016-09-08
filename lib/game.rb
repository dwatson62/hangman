require './lib/word'
require 'byebug'

class Game
  attr_reader :word

  def initialize
    @word = Word.new
  end

  def guess_a_letter(guess)
    word.letters.each do |letter|
      if letter.value == guess
        puts 'Correct!'
        return letter.solve
      end
    end
    puts 'Better luck next time'
  end

  def ask_for_input
    puts 'Guess a letter...'
    print "\n"
    print '> '
  end

  def display_word
    puts word.display
  end

  def word_solved?
    word.solved?
  end

  def end_game
    puts 'You win' if word_solved?
  end
end
