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

    def is_older_than(other)
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

class Pesce < Animal

    def nuota
        who_am_i
        puts(' and I am swimming')
    end
end

def test_inheritance

    cat = Animal.new('Cat', 5)
    cat.eat('fish')
    puffer = Pesce.new('Puffer Fish', 2)
    puffer.eat('Plancton')
    puffer.nuota

    if cat.is_older_than puffer
        puts("#{cat.name} is older than #{puffer.name}")
    end

end

