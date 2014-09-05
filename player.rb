class Player
	attr_accessor :user_name, :score

	def initialize(user_name, score)
		@user_name = user_name
		@score = score
	end
end