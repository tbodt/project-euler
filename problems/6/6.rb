#!/usr/bin/env ruby

sum_of_squares = (1..100).map {|x| x * x}.inject(:+)
square_of_sum = (1..100).inject(:+)
square_of_sum = square_of_sum * square_of_sum
puts square_of_sum - sum_of_squares
