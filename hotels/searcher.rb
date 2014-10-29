require "csv"

class Searcher

  def initialize
    hotels = []
    CSV.foreach('hotels.csv', headers: true) do |hotel|
      hotels << hotel
    end

    puts hotels
  end
end

searcher = Searcher.new

