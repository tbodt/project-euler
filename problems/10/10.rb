#!/usr/bin/env ruby
require 'prime'

puts Prime.lazy.take_while {|p| p < 2_000_000}.inject(:+)
