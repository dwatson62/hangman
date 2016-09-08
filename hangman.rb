require_relative 'lib/letter'
require_relative 'lib/game'
require_relative 'lib/word'
require_relative 'lib/player'
require_relative 'lib/man'

game = Game.new
player = game.player
man = game.man

until game.word_solved? || man.dead?
  game.display_word
  puts ''
  man.display
  puts ''
  player.display_history
  puts ''
  game.ask_for_input
  letter = gets.chomp

  game.guess_a_letter(letter)
end

puts game.end_game
