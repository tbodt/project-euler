#!/usr/bin/env ruby

require 'prime'

puts Prime.prime_division(600851475143).map {|(x, y)| x}.max
