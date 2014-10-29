require "./computer"

class Player
  
  def play
    puts "Would you like to choose Rock, Paper, or Scissors?"
    answer = gets.chomp
    puts answer
    @answer = answer
  end

  def win_or_lose
    if @answer == "Scissors" && @hand == "Paper"
      puts "You win"
    elsif @answer == "Paper" && @hand == "Rock"
      puts "You win"
      elsifif @answer == "Rock" && @hand == "Scissors"
      puts "You win"
    end
  end
end
