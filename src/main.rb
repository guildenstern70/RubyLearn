#
# RubyLearn
# (c) Alessio Saltarin 2017-2020
#
# This software is distributed under MIT License
# See LICENSE file
#

require_relative 'class'
require_relative 'collections'
require_relative 'switch'
require_relative 'exceptions'
require_relative 'inheritance'

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
