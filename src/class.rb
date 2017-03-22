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
    puts 'Moving '+ mossa[0] +' of ' + steps.to_s + ' steps. Now facing ' + @facing.to_s + '.'
    puts 'I am now in ['+ @xposition.to_s + ', ' + @yposition.to_s + ']'
  end

  def move_right(steps)
    set_facing 'R'
    advance steps
  end

  def move_left(steps)
    set_facing 'L'
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

  def set_facing(where)

    if where == 'R'

      if @facing == :NORTH
        @facing = :EAST
      elsif @facing == :SOUTH
        @facing = :WEST
      elsif @facing == :EAST
        @facing = :SOUTH
      else
        @facing = :NORTH
      end

    else

      if @facing == :NORTH
        @facing = :WEST
      elsif @facing == :SOUTH
        @facing = :EAST
      elsif @facing == :EAST
        @facing = :NORTH
      else
        @facing = :SOUTH
      end

    end

  end

end
