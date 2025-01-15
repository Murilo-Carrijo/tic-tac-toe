require_relative 'game'
require_relative 'human_player'
require_relative 'computer_player'

module TicTacToe
  LINES = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
end

include TicTacToe

Game.new(ComputerPlayer, ComputerPlayer).play
puts
players_with_human = [HumanPlayer, ComputerPlayer].shuffle
Game.new(*players_with_human).play