class Bag
	def initialize
		@bag = []
	end
	
	def empty?
		@bag.empty?
	end
	
	def count
		@bag.length 
	end
	
	def candies
		@bag
	end

	def <<(candy)
		@bag << candy
	end

	def contains?(type)
		candy_types = @bag.collect {|candy| candy.type}
		candy_types.include?(type)
	end

	def grab(name)
	  grabbed_candy = @bag.find {|candy| candy.type == name }
	  @bag.delete_if {|candy| candy == grabbed_candy}
	  grabbed_candy
	end

	def take(number=1)
		if number == 1
       num_taken = @bag.take(number)
			 @bag = @bag.drop(number)
			 num_taken.first
		else		
			 num_taken = @bag.take(number)
			 @bag = @bag.drop(number)
			 num_taken
		end	 
	end
end
