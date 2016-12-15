module Collections

    def Collections.simple_all_usage_collection

        my_collection = Array.new # Undefined size collection
        (100..999).each { |n|
            my_collection.push(n) # adding object to collection
        }
        puts(my_collection.pop) # get lates object from collection

        puts("Elementi nella collezione> #{my_collection.size.to_s}") #899
        puts("Stampa l'elemento numero 200> #{my_collection.at(200).to_s}")
        puts("Stampa l'elemento numero 200> #{my_collection[200].to_s}")

    end

end