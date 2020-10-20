#
# RubyLearn
# (c) Alessio Saltarin 2017-2020
#
# This software is distributed under MIT License
# See LICENSE file
#

# Sample collections
module Collections

  def self.simple_all_usage_collection
    my_collection = [] # Undefined size collection
    (100..999).each do |n|
      my_collection.push(n) # adding object to collection
    end
    puts(my_collection.pop) # get lates object from collection

    puts("Elements in collection > #{my_collection.size}")
    puts("Element #200> #{my_collection.at(200)}")
    puts("Element #200> #{my_collection[200]}")

    my_collection
  end

  def self.initialize
    array = %w[1 2 3]
    puts("Elements in array > #{array.size}")
  end

  def self.hash_map
    hash1 = {}
    hash1['One'] = 100
    hash1['Two'] = 200
    puts "Hash 1: One = #{hash1['One']}"
    hash1
  end

  def self.hash_map_alt
    hash2 = {
      'One': 100,
      'Two': 200
    }
    hash2.keys.each do |key|
      puts "Hash 2: #{key} = " + hash2[key].to_s
    end
  end

end
