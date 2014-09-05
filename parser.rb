require 'csv'
require_relative 'card'

class Parser
	attr_reader :file

	def initialize
		@file = 'flash_cards.csv'
	end

	def read
		csv_data = []
		CSV.foreach(file) do |card|
			csv_data << card
		end
		csv_data
	end

	def print
		puts deck
	end
end

# test = Parser.new
# test.parse
# test.print