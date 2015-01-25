#!/usr/bin/env ruby

File.open("pythagorean-triples.txt") do |f|
	f.each do |triple|
		triple = triple.split[(0..2)].map(&:to_i)
		if triple.inject(:+) == 1000
			p triple
			p triple.inject(:*)
		end
	end
end

