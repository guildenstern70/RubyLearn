require 'minitest/autorun'
require_relative '../src/class'
require_relative '../src/collections'

class ClassTest < MiniTest::Test

  def setup
    @omino = Omino.new
  end

  def teardown
    # Do nothing
  end

  def test_that_omino_works
    @omino.move 'R2, L3'
    distance = @omino.distance
    puts "Class distance = #{distance}"
    assert_equal distance, 2
  end

  def test_collections
    retnum = Collections.simple_all_usage_collection
    assert_equal (retnum.include? 121), true
  end
end
