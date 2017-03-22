module Collections

  def Collections.simple_all_usage_collection

    my_collection = Array.new # Undefined size collection
    (100..999).each { |n|
      my_collection.push(n) # adding object to collection
    }
    puts(my_collection.pop) # get lates object from collection

    puts("Elements in collection > #{my_collection.size.to_s}") #899
    puts("Element #200> #{my_collection.at(200).to_s}")
    puts("Element #200> #{my_collection[200].to_s}")

    puts 'The collection has an item #121!' if my_collection.include? 121

  end

  def Collections.hash_map

    hash1 = Hash.new
    hash1['One'] = 100
    hash1['Two'] = 200

    hash2 = {
        'One': 100,
        'Two': 200
    }

    puts "Hash 1: One = #{hash1['One']}"

    hash2.keys.each { |key|
      puts "Hash 2: #{key} = " + hash2[key].to_s
    }

  end

end