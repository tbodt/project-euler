#!/usr/bin/env ruby
require 'prime'

class Integer
	def divisors
		if self == 1
			return [1]
		end

		divisors = []
		factors = Prime.prime_division self
		n_factors = factors.length
		f_thing = [0] * n_factors
		loop do
			divisors << (0...n_factors).map {|x| factors[x][0]**f_thing[x]}.inject(:*)
			i = 0
			loop do
				f_thing[i] ||= 0
				f_thing[i] += 1
				break if f_thing[i] <= factors[i][1]
				f_thing[i] = 0
				i += 1
				return divisors if i >= n_factors
			end
		end
		divisors
	end
end

class TriangularNumbers
	class << self
		include Enumerable
	end

	def self.each
		n = 1
		inc = 2
		loop do
			yield n
			n += inc
			inc += 1
		end
	end
end

p TriangularNumbers.lazy.map {|i| [i.divisors.length, i]}.drop_while {|x| x[0] < 500}.first
