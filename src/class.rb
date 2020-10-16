#
# RubyLearn
# (c) Alessio Saltarin 2017-2020
#
# This software is distributed under MIT License
# See LICENSE file
#

# A sample class in Ruby
class Omino

  def initialize
    @xposition = 0
    @yposition = 0
    @facing = :NORTH
  end

  def distance
    @xposition.abs + @yposition.abs
  end

  def move(mossa)
    steps = mossa[1..mossa.length].to_i
    if mossa[0] == 'R'
      move_right(steps)
    else
      move_left(steps)
    end
    puts "Moving #{mossa[0]} of #{steps} steps. Now facing #{@facing}"
    puts "I am now in #{@xposition}, #{@yposition}]"
  end

  def move_right(steps)
    facing 'R'
    advance steps
  end

  def move_left(steps)
    facing 'L'
    advance steps
  end

  def advance(steps)
    case @facing
    when :NORTH
      @yposition += steps
    when :SOUTH
      @yposition -= steps
    when :EAST
      @xposition += steps
    else
      @xposition -= steps
    end
  end

  def facing(where)
    if where == 'R'
      @facing = :EAST if @facing == :NORTH
      @facing = :WEST if @facing == :SOUTH
      @facing = :SOUTH if @facing == :EAST
      @facing = :NORTH if @facing == :WEST
    else
      @facing = :WEST if @facing == :NORTH
      @facing = :EAST if @facing == :SOUTH
      @facing = :NORTH if @facing == :EAST
      @facing = :SOUTH if @facing == :WEST
    end
  end

end
