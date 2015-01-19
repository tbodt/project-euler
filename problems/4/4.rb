#!/usr/bin/env ruby

puts (100..999).to_a.combination(2).map {|x| x.inject(:*)}.select {|x| x.to_s.reverse == x.to_s}.max
