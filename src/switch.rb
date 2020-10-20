#
# RubyLearn
# (c) Alessio Saltarin 2017-2020
#
# This software is distributed under MIT License
# See LICENSE file
#

# Example of using switch
module Switch

  def self.switch(a_number)
    case a_number
    when 1..5
      "It's between 1 and 5"
    when 6
      "It's 6"
    when String
      "You passed a string: #{a_number}"
    else
      "You gave me #{a_number} -- I have no idea what to do with that."
    end
  end

end



