class TrickOrTreater
	attr_reader :costume, :sugar_level
	
	def initialize(costume)
		@costume = costume 
		@bag = Bag.new
		@sugar_level = 0
	end

	def dressed_up_as
		@costume.style
	end

	def bag
	  @bag
	end

	def has_candy?
		!@bag.empty?
	end

	def candy_count
		@bag.count
	end

	def eat
		candy_taken = @bag.take
		@sugar_level += candy_taken.sugar
	end
end