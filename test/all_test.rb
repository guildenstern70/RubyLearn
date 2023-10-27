#
# RubyLearn
# (c) Alessio Saltarin 2017-2023
#
# This software is distributed under MIT License
# See LICENSE file
#
require 'minitest/autorun'

require_relative '../src/class'
require_relative '../src/collections'
require_relative '../src/switch'
require_relative '../src/exceptions'
require_relative '../src/for_loops'
require_relative '../src/inheritance'
require_relative '../src/polymorphism'

class AllTest < Minitest::Test
  def setup
    # Do nothing
  end

  def teardown
    # Do nothing
  end

  def test_that_omino_works
    omino = Omino.new
    omino.move 'R2, L3'
    distance = omino.distance
    puts "Class distance = #{distance}"
    assert_equal distance, 2
  end

  def test_collections1
    retnum = Collections.simple_all_usage_collection
    assert_equal (retnum.include? 121), true
  end

  def test_collections2
    hash1 = Collections.hash_map
    assert_equal hash1['One'], 100
  end

  def test_switch
    switch = Switch.switch 6
    assert_equal switch, "It's 6"
  end

  def test_exceptions
    excetpion1 = Exceptions.raise_rescue_else_ensure 2001
    assert_equal excetpion1, 2001
    excetpion2 = Exceptions.raise_rescue_else_ensure(-1)
    assert_equal excetpion2, 198
  end

  def test_for_loops
    sum = ForLoops.each 100
    assert_equal sum, 5050
  end

  def test_inheritance
    cat = Animal.new('Cat', 5)
    cat.eat('fish')
    puffer = Fish.new('Puffer Fish', 2)
    puffer.eat('Plancton')
    puffer.swim
    puts("#{cat.name} is older than #{puffer.name}") if cat.older_than? puffer
    assert cat.older_than? puffer
  end

  def test_polimorphism
    assert_equal all_together_now, 1529.4423602330987
  end
end
