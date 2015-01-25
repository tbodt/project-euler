#!/usr/bin/env ruby

puts File.open("numbers").each.map(&:to_i).inject(:+)
