class Game
  attr_reader :player, :man, :word

  def initialize
    @word = Word.new
    @player = Player.new
    @man = Man.new
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
    update_score(correct, guess)
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
    return puts 'You win' if word_solved?
    'You died!'
  end

  private

  def update_score(correct, guess)
    if correct
      puts 'Correct!'
    else
      puts 'Better luck next time'
      man.update
    end
    player.update_history(guess)
  end

  def bad_message
    print "\n"
    puts 'Please enter an actual letter'
  end

  def valid_input?(guess)
    guess =~ /[a-z]/ && guess.length == 1
  end
end
