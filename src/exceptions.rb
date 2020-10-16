#
# RubyLearn
# (c) Alessio Saltarin 2017-2020
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
    puts e.message + ' ' + e.backtrace.inspect
  end

  def self.multiple_lines_rescue
    my_var = 2001
    raise 'Test Exception 2' if my_var.negative?
  rescue StandardError => e
    puts e.message
  else
    puts 'No errors here! MyVar = ' + my_var
  end

end
