#!/usr/bin/env ruby
result = 1
1.upto(20) {|i| result = result.lcm(i)}
puts result
