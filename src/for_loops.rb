#
# RubyLearn
# (c) Alessio Saltarin 2017-2021
#
# This software is distributed under MIT License
# See LICENSE file
#

# For Loops Examples
module ForLoops
  def self.classic_for
    for i in 0..5
      puts "Value of local variable is #{i}"
    end
  end

  def self.while
    while k < 5
      puts('Inside the loop i = #k')
      k += 1
    end
  end

  def self.until
    k = 0
    until k > 5
      puts('Inside the loop i = #k')
      k += 1
    end
  end

  def self.each(max)
    ## Each
    sum = 0
    (0..max).each do |j|
      sum += j
    end
    puts "Sum is #{sum}"
    sum
  end
end
