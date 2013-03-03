#!/usr/bin/env ruby
class MultipleMaker

	attr_accessor :number

	def initialize(number=0)
		@number = number
	end

	def solve

		sum = 0

		count = 1
		while (count * 3) < number
			sum += count * 3
			count = count + 1
		end

		count = 1
		while (count * 5) < number
			if ((count * 5) % 3 != 0)
				sum += count * 5
			end
			count = count + 1
		end

		return sum
	end	
end



if __FILE__== $0

	multipleMaker = MultipleMaker.new(1000)
	puts multipleMaker.solve

end