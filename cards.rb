require_relative 'parser'
require_relative 'card'
class Cards
	attr_accessor :cards

	def initialize
		parser = Parser.new
		@csv_data = parser.read
		@cards = []
	end

	def create_deck(num_of_cards)
		@csv_data.each do |row|
			@cards << Card.new(row[0], row[1])
		end
		@cards.sample(num_of_cards)
	end
end

