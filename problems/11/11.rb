#!/usr/bin/env ruby

grid = []

File.open("grid.txt") do |f|
	f.each do |line|
		grid << line.split.map(&:to_i)
	end
end

max = 0

class NilClass
	def [](*args)
		nil
	end
end

grid.each_with_index do |line, i|
	line.each_with_index do |number, j|
		horizontal = grid[i][j, 4]
		vertical = [grid[i][j], grid[i+1][j], grid[i+2][j], grid[i+3][j]]
		diagonal = [grid[i][j], grid[i+1][j+1], grid[i+2][j+2], grid[i+3][j+3]]
		diagonal_back = [grid[i][j], grid[i+1][j-1], grid[i+2][j-2], grid[i+3][j-3]]
		[horizontal, vertical, diagonal, diagonal_back].each do |set|
			unless set.any?(&:nil?)
				if set.inject(:*) > max
					p set
					p set.inject(:*)
					max = set.inject(:*)
				end
			end
		end
	end
end

puts max
