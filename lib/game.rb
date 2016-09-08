class Game
  attr_reader :word

  def initialize
    @word = Word.new
  end

  def guess_a_letter(guess)
    guess.downcase!
    return bad_message unless valid_input?(guess)
    correct = false
    word.letters.each do |letter|
      if letter.value == guess
        letter.solve
        correct = true
      end
    end
    update_message(correct)
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

  private

  def update_message(correct)
    return puts 'Correct!' if correct
    puts 'Better luck next time'
  end

  def bad_message
    print "\n"
    puts 'Please enter an actual letter'
  end

  def valid_input?(guess)
    guess =~ /[a-z]/
  end
end
