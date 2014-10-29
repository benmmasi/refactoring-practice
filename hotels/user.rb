require "csv"

CSV.foreach('hotels.csv', headers: true) do |row|
  puts row.inspect
  hotels = 'hotels.csv'["Hotel"]
end

class User
  def initialize
    
  end

