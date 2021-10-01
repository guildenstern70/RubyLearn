#
# RubyLearn
# (c) Alessio Saltarin 2017-2021
#
# This software is distributed under MIT License
# See LICENSE file
#

# Exceptions example
module Exceptions
  def self.raise_exception
    puts 'Before the raise.'
    raise 'An error has occured'
  end

  def self.argument(some_number)
    raise ArgumentError, 'Argument is not numeric' unless some_number.is_a? Numeric

    1.0 / x
  end

  def self.raise_and_rescue
    raise 'A test exception.'
  rescue StandardError => e
    puts "#{e.message} #{e.backtrace.inspect}"
  end

  def self.raise_rescue_else_ensure(my_var)
    result = my_var
    raise 'Test Exception 2' if my_var.negative?

    result
  rescue StandardError => e
    result = 198
    puts e.message
    puts "MyVar was <0! Setting it to = #{result}"

    result
  ensure
    puts 'All done.'
  end
end
