require_relative 'cards'
require_relative 'console'
require_relative 'player'
# require_relative ''

class Game

	def initialize
		@cards = Cards.new 
		@console = Console.new

		init_game
	end

	def init_game
		create_welcome_message
		
		@deck = create_deck_of_cards
		
		run!
	end

	def create_welcome_message
		name = @console.display_name
		@player = Player.new(name, 0)
		@console.display_welcome(name)
	end

	def create_deck_of_cards
		num_of_cards = @console.display_how_many_cards
		@cards.create_deck(num_of_cards.to_i)
	end

	def run!
		@console.clear_screen!

		until @deck.size == 0
			card = @deck.pop
			input = @console.display_question(card.question)

			@player.score += 1 if input == card.answer
			@console.display_answer(card.answer)
		end

		finish_game
	end

	def finish_game
		@console.display_game_finish(@player.score, @player.user_name)
		input = @console.display_play_again_message
		
		@console.error_message unless input == "yes" || input == "no"

		init_game if input == "yes"
			

	end
end

Game.new

