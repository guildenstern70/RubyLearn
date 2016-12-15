require_relative 'class'
require_relative 'collections'
require_relative 'switch'
require_relative 'exceptions'

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

# 3. Switches
puts '*** Switches ***'
puts Switch.switch 5
puts

# 4. Exceptions
puts '*** Exceptions ***'
Exceptions.raise_exception
Exceptions.raise_and_rescue
puts

