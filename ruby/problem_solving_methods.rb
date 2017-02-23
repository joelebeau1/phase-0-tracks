# Release 0: Simple Search
# Write a method that takes an array of integers and an integer to search for;
# method should return index of integer being searched for or nil if integer isn't present in array

def search_array(array, integer)
    # Search array for given integer
    array.each_with_index do |item, index|

        if item.eql? integer
            p index
        elsif !item.eql? integer
            nil
        else puts "nil"
        end
    
    end
end 

array = [10, 20, 30, 40, 50]
search_array(array, 40)


# Release 1