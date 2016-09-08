require_relative 'lib/letter'
require_relative 'lib/game'
require_relative 'lib/word'
require_relative 'lib/player'

game = Game.new
player = game.player

until game.word_solved?
  game.display_word
  puts ''
  player.display_history
  puts ''
  game.ask_for_input
  letter = gets.chomp

  game.guess_a_letter(letter)
end

puts game.end_game
