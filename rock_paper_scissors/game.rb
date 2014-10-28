require "./player"
require "./computer"

class Game
  HANDS = ["Rock", "Paper", "Scissors"]
  
  def initialize
    @hand = HANDS.sample
    @computer = Computer.new(@hand)
  end

  def play_round
    @player = Player.new
    @player.play
    @computer.play
  end
end

game = Game.new
game.play_round
