# frozen_string_literal: true

#
# RubyLearn
# (c) Alessio Saltarin 2017-2026
#
# This software is distributed under MIT License
# See LICENSE file
#

module KWArgs
  # Keyword Arguments with default values
  # Ruby 2.0 introduced keyword arguments
  def self.method_with_keyword_arguments(one: 1, two: 'two')
    [one, two]
  end

  # Required keyword arguments (no default value, Ruby 2.1+)
  def self.method_with_required_kwargs(id:, name: 'Anonymous')
    { id: id, name: name }
  end

  # Anonymous keyword argument forwarding (Ruby 3.2+)
  def self.delegate_keyword_arguments(**)
    method_with_keyword_arguments(**)
  end

  # Demonstrates modern Ruby keyword arguments usage:
  # - Order independence
  # - Omitting default arguments
  # - Value omission / Punning (Ruby 3.1+)
  # - Explicit hash expansion via double splat (**) (Mandatory in Ruby 3+)
  def self.call_method_with_keyword_arguments
    results = []

    # 1. Named arguments in any order
    results << method_with_keyword_arguments(one: 2, two: 'three')
    results << method_with_keyword_arguments(two: 'three', one: 2)

    # 2. Omitting arguments with default values
    results << method_with_keyword_arguments(one: 2)
    results << method_with_keyword_arguments(two: 'three')

    # 3. Ruby 3.1+ Value Omission / Punning (when variable name matches argument name)
    one = 10
    two = 'twenty'
    results << method_with_keyword_arguments(one:, two:)

    # 4. In Ruby 3.0+, passing a Hash must use the double-splat (**) operator
    hash_options = { one: 42, two: 'answer' }
    results << method_with_keyword_arguments(**hash_options)

    # Print results to stdout
    results.each { |res| puts res.inspect }

    results
  end
end
