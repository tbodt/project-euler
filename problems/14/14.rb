#!/usr/bin/env ruby

def collatz_length(n)
	length = 0
	until n == 1
		if n.even?
			n /= 2
		else
			n = 3*n + 1
		end
		length += 1
	end
	length
end

puts (1..1_000_000).map {|x| [x, collatz_length(x)]}.max_by {|x| x[1]}[0]
