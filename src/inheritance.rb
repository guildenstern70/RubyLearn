#
# RubyLearn
# (c) Alessio Saltarin 2017-2026
#
# This software is distributed under MIT License
# See LICENSE file
#

# Animal class
# Base class for all animals
class Animal
  def initialize(name, age)
    @name = name
    @age = age
  end

  attr_reader :name, :age

  def breathe
    who_am_i
    puts(' and I am breathing')
  end

  def older_than?(other)
    @age > other.age
  end

  def eat(what)
    who_am_i
    puts(" and I am eating a #{what}")
  end

  def who_am_i
    print("I am a #{@name}")
  end

  protected :age
end

# Fish class
# Derived from Animal
class Fish < Animal
  def swim
    who_am_i
    puts(' and I am swimming')
  end
end
