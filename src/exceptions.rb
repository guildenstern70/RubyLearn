module Exceptions

  def self.raise_exception
    puts 'Before the raise.'
    raise 'An error has occured'
  end

  def self.argument(x)
    raise ArgumentError, 'Argument is not numeric' unless x.is_a? Numeric
    1.0 / x
  end

  def self.raise_and_rescue
    begin
      raise 'A test exception.'
    rescue Exception => e
      puts e.message
      puts e.backtrace.inspect
    end
  end

end
