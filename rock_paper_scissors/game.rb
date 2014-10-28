require "./player"
require "./computer"

class Game
  HANDS = ["Rock", "Paper", "Scissors"]
  NUMBER_OF_ROUNDS = 3
  
  def initialize
    @hand = HANDS.sample
    @computer = Computer.new(@hand)
  end

  def play_round
    NUMBER_OF_ROUNDS.times do
    @player = Player.new
    @player.play
    @computer.play
    end
  end
end

game = Game.new
game.play_round
