#!/usr/bin/env ruby
#Give me a CIDR string and a list of ip addresses to remove, and I will return the remainder. Useful for when clients
#insist on giving you stupid scope data, instead of just what they need testing.
#usage: ./ipsubtract.rb ADDRESS/24 listofexclusions.txt
require 'ipaddr'

cidr_address = ARGV[0]
exclusions   = File.readlines(ARGV[1]).map(&:chomp &&:strip)

address_array = IPAddr.new(cidr_address).to_range.to_a.map { |a| a.to_s}

remainder = address_array - exclusions
removals  = address_array

file = cidr_address.gsub('.', '_').gsub('/', '_')
puts "Valid IP addresses written to #{file}.txt"
File.open("#{file}.txt", 'w') { |f| f.puts(remainder) }

puts "\nThe following IP Addresses were excluded:\n"
puts address_array - remainder
