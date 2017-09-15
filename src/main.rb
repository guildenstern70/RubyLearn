#
# RubyLearn
# (c) Alessio Saltarin 2017
#
# This software is distributed under MIT License
# See LICENSE file
#


require_relative 'class'
require_relative 'collections'
require_relative 'switch'
require_relative 'exceptions'
require_relative 'inheritance'

# 1. Classes
puts '*** Classes ***'
omino = Omino.new
omino.move 'R2, L3'
puts "Class distance = #{omino.distance}"
puts

# 2. Collections
puts '*** Collections ***'
Collections.simple_all_usage_collection
Collections.hash_map
puts

# 3. Switches
puts '*** Switches ***'
puts Switch.switch 5
puts

# 4. Exceptions
puts '*** Exceptions ***'
begin
  Exceptions.raise_exception
  Exceptions.raise_and_rescue
rescue StandardError => e
  puts e.message
  puts e.backtrace.inspect
end
puts

# 5. Inheritance
puts '*** Inheritance ***'
test_inheritance

