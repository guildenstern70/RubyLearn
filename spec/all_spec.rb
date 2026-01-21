#
# RubyLearn
# (c) Alessio Saltarin 2017-2026
#
# This software is distributed under MIT License
# See LICENSE file

require_relative '../src/class'
require_relative '../src/collections'
require_relative '../src/switch'
require_relative '../src/exceptions'
require_relative '../src/for_loops'
require_relative '../src/inheritance'
require_relative '../src/polymorphism'
require_relative '../src/mixins'
require_relative '../src/kwargs'

RSpec.describe Class do
  context 'LittleMan class' do
    it 'calculates distance correctly' do
      puts "Testing LittleMan class"
      omino = LittleMan.new
      omino.move 'R2, L3'
      distance = omino.distance
      expect(distance).to eq(2)
    end
  end
end

RSpec.describe  Collections do
  context 'Collections module' do
    it 'checks simple_all_usage_collection' do
      retnum = Collections.simple_all_usage_collection
      expect(retnum.include? 121).to eq(true)
    end

    it 'checks hash_map_is_a_dictionary' do
      hash1 = Collections.hash_map_is_a_dictionary
      expect(hash1['One']).to eq(100)
    end

    it 'checks set_is_a_collection_with_uniques' do
      my_set = Collections.set_is_a_collection_with_uniques
      expect(my_set.count).to eq(3)
    end

    it 'checks you_can_also_use_arrays' do
      my_array = Collections.you_can_also_use_arrays
      expect(my_array[2]).to eq(300)
    end
  end

end

RSpec.describe Switch do
  context 'Switch module' do
    it 'checks switch method' do
      switch = Switch.switch 6
      expect(switch).to eq("It's 6")
    end
  end
end

RSpec.describe Exceptions do
  context 'Exceptions module' do
    it 'checks raise_rescue_else_ensure method' do
      excetpion1 = Exceptions.raise_rescue_else_ensure 2001
      expect(excetpion1).to eq(2001)
      excetpion2 = Exceptions.raise_rescue_else_ensure(-1)
      expect(excetpion2).to eq(198)
    end
  end
end

RSpec.describe 'Inheritance' do
  context 'Inheritance module' do
    it 'checks Animal and Fish classes' do
      cat = Animal.new('Cat', 5)
      cat.eat('fish')
      puffer = Fish.new('Puffer Fish', 2)
      puffer.eat('Plancton')
      puffer.swim
      expect(cat.older_than? puffer).to eq(true)
    end
  end
end

RSpec.describe 'Polymorphism' do
  context 'Polymorphism module' do
    it 'checks all_together_now method' do
      expect(all_together_now).to eq(1529.4423602330987)
    end
  end
end

RSpec.describe 'For Loops' do
  context 'ForLoops module' do
    it 'checks each method' do
      sum = ForLoops.each 100
      expect(sum).to eq(5050)
    end
  end
end

RSpec.describe 'Mixins' do
  context 'Mixins module' do
    it 'checks Parent and Child classes' do
      mixin = Parent.new
      expect(mixin.a2).to eq('This is Child two.')
    end
  end
end

RSpec.describe 'KWArgs' do
  context 'KWArgs module' do
    it 'checks method_with_keyword_arguments method' do
      kwargs = KWArgs.method_with_keyword_arguments(one: 2, two: 'three')
      expect(kwargs).to eq([2, 'three'])
    end
  end
end
