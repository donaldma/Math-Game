require_relative 'player'
require_relative 'question'
require_relative 'game'

#Starting the game when ruby main.rb is run on CLI
new_game = MathGame::Game.new
new_game.start