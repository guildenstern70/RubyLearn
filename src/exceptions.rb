module Exceptions

  def Exceptions.raise_exception
    puts 'Before the raise.'
    raise 'An error has occured'
  end

  def Exceptions.argument(x)
    raise ArgumentError, 'Argument is not numeric' unless x.is_a? Numeric
    1.0 / x
  end

  def Exceptions.raise_and_rescue
    begin
      raise 'A test exception.'
    rescue Exception => e
      puts e.message
      puts e.backtrace.inspect
    end
  end

end
