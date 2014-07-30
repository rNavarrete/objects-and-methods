class Bag
	def initialize
		@candies = []
	end	
	def empty?
		@candies.empty?
	end
	
	def count
		@candies.length
	end

	def eat_candy
		@candies.pop
	end
  
  def candies
  	@candies
  end

  def contains?(candy)
  	candy_names = @candies.collect {|candy| candy.type}
  	candy_names.include?(candy)
  end

  def <<(candy)
    @candies << candy
  end
end