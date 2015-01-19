#!/usr/bin/env ruby
class Fibbonaci
	include Enumerable

	def each
		prev = 1
		this = 2
		yield prev

		loop do
			after = prev + this
			prev = this
			this = after
			yield prev
		end
	end

	def self.all
		Fibbonaci.new.lazy
	end
end

puts Fibbonaci.all.take_while {|i| i <= 4_000_000}.select(&:even?).inject(:+)
