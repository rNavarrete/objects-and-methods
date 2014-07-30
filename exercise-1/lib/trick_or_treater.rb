class TrickOrTreater
	def initialize(name)
		@name = name.style
		@bag = Bag.new
	end

	def dressed_up_as
		@name
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
		@bag.eat_candy
	end
	
end