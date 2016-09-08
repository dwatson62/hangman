require './lib/word'
require 'byebug'

class Game
  attr_reader :word

  def initialize
    @word = Word.new
  end

  def guess_a_letter(guess)
    correct = false
    word.letters.each do |letter|
      if letter.value == guess
        letter.solve
        correct = true
      end
    end
    update_message(correct)
  end

  def update_message(correct)
    if correct
      puts 'Correct!'
    else
      puts 'Better luck next time'
    end
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
