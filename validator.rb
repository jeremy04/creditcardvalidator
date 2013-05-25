#!/usr/bin/env ruby

require_relative 'lib/credit_card'
require_relative 'lib/unknown_card'
require_relative 'lib/amex_card'
require_relative 'lib/visa_card'
require_relative 'lib/master_card'
require_relative 'lib/discover_card'

require 'active_support/inflector'

while STDIN.gets
  input = $_.chomp
  credit_class = ["AmexCard", "VisaCard", "MasterCard", "DiscoverCard"].select { |type| type.constantize.new(input).legit? }
  credit_class = ["UnknownCard"] if credit_class.empty?
  card = credit_class.first.constantize.new(input)
  validity = card.valid? ? "valid" : "invalid"
  puts "#{card.to_s}: #{card.number} (#{validity})"
end
