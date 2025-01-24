#
# RubyLearn
# (c) Alessio Saltarin 2017-2025
#
# This software is distributed under MIT License
# See LICENSE file

module KWArgs

  # Keyword Arguments
  # Ruby 2.0 introduced keyword arguments
  def self.method_with_keyword_arguments(one: 1, two: 'two')
    [one, two]
  end

  # You can call this method with named arguments
  # The order of the arguments does not matter
  # You can also omit arguments
  # You can also pass arguments in the old way
  def self.call_method_with_keyword_arguments
    puts(method_with_keyword_arguments(one: 2, two: 'three'))
    puts(method_with_keyword_arguments(two: 'three', one: 2))
    puts(method_with_keyword_arguments(one: 2))
    puts(method_with_keyword_arguments(two: 'three'))
  end

end