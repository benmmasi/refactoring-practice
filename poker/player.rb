require "./deck"

class Player
  def initialize(hands)
    @hands = hands
  end

  def play_hand
    puts @hands
  end
end



