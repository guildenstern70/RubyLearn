#
# Example of using switch
#
module Switch

  def self.switch(a)

    case a
    when 1..5
      "It's between 1 and 5"
    when 6
      "It's 6"
    when String
      "You passed a string: #{a}"
    else
      "You gave me #{a} -- I have no idea what to do with that."
    end

  end

end

