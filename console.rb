class Console
	
	def display_name
		puts "Input your name:"
		gets.chomp
	end

	def display_welcome(name)
		puts "Hello #{name.upcase}!"
		puts "Welcome to the Cats Flashcard Game!"
	end

	def display_how_many_cards
		puts "How many cards would you like to play with (1-8)"
		gets.chomp.downcase
	end

	def display_question(question)
		puts question
		gets.chomp.downcase
	end

	def display_answer(answer)
		puts answer
	end

	def display_game_finish(score, name)
		puts "#{name}, your score is #{score}! Congratulations!"
	end

	def display_play_again_message
		puts "Do you want to play again?(type: yes or no)"
		gets.chomp.downcase
	end

	def error_message
		puts "Please type the correct character"
	end

	def clear_screen!
    print "\e[2J"
    move_to_home!
  end

  def move_to_home!
    print "\e[H"
  end

end

