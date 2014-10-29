class Deck
attr_reader :card
  CARDS_IN_HAND = 5
  
  def initialize
    @cards = []
    @values = %w[2, 3, 4, 5, 6, 7, 8, 9, T, J, Q, K, A]
    @suits = %w[H, S, C, D]
    @hands = []
  end

  def make_cards
    @suits.each do |suit|
      @values.each do |value|
        @cards << Card.new(suit, value)
      end
    end
  end

    def shuffle
      @cards.shuffle
    end

    def deal_hands
      CARDS_IN_HAND.times do 
        card = @card.sample
        @hands << card
        Player.new(hands)
      end

    end

    #def print_deck
     # @cards.each do |card|
      #  puts card
      #end
    #end
end

deck = Deck.new
deck.print_deck

