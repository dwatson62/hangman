require_relative 'lib/letter'
require_relative 'lib/game'
require_relative 'lib/word'

game = Game.new

until game.word_solved?
  game.display_word
  puts ''
  game.ask_for_input
  letter = gets.chomp

  game.guess_a_letter(letter)
end

puts game.end_game
