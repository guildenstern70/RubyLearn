module ForLoops

  def self.fors

    k = 0
    num = 5

    ## Classic For
    for i in 0..5
      puts "Value of local variable is #{i}"
    end

    ## Each
    (0..5).each do |j|
      puts "Value of local variable is #{j}"
    end

    ## While
    while k < num  do
      puts('Inside the loop i = #k')
      k += 1
    end

    ## Until
    until k > num  do
      puts('Inside the loop i = #k')
      k += 1
    end

  end

end