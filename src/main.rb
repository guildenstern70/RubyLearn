require_relative 'class'
require_relative 'collections'

# 1. Classes
puts '*** Classes ***'
omino = Omino.new
omino.move 'R2, L3'
puts "Class distance = #{omino.distance}"
puts

# 2. Collections
puts '*** Collections ***'
Collections.simple_all_usage_collection
puts

