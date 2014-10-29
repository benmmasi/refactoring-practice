require "csv"

class Searcher

  def initialize
    @hotels = []
    CSV.foreach('hotels.csv', headers: true) do |hotel|
      @hotels << hotel
    end
  end

  def find_hotel
    ask_user_for_hotel
    return_hotel_info
  end

  def ask_user_for_hotel
    puts "Which hotel would you like to stay at?"
    @user_query = gets.chomp
    puts @user_query
  end

  def return_hotel_info
    found_hotel = @hotels.find {|hotel| hotel["Hotel"] == @user_query.to_s}
    puts "Property: #{found_hotel["Hotel"]}"
    puts "City: #{found_hotel["City"]}"
    puts "Phone Number: #{found_hotel["Phone Number"]}"
    puts "Number of Singles: #{found_hotel["Number of Singles"]}"
    puts "Number of Doubles: #{found_hotel["Number of Doubles"]}"
  end
  
end

searcher = Searcher.new
searcher.find_hotel

