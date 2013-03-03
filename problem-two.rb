#!/usr/bin/env ruby

class Fibonacci 

	TERM_MAX = 4000000

	def solve

		sum = 0
		numOne = 1
		numTwo = 2

		while numOne < TERM_MAX && numTwo < TERM_MAX
			# Add the calculation to the running sum if the term is even
			if numTwo % 2 == 0
				sum += numTwo
			end

			# Add the two together
			calc = numOne + numTwo
			# Setup for next step.
			numOne = numTwo
			numTwo = calc
		end

		return sum
	end

end

if __FILE__ == $0
	fib = Fibonacci.new
	puts fib.solve
end