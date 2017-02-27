# # Release 0: Simple Search
# # Write a method that takes an array of integers and an integer to search for;
# # method should return index of integer being searched for or nil if integer isn't present in array

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
search_array(array, 4)

# # # Release 1: Fibonacci Method

def fibonacci (n)
    def calculation(n)
       a = 0
       b = 1

       # Compute Fibonacci number in the desired position.
      n.times do
           temp = a
           a = b
           # Add up previous two numbers in sequence.
           b = temp + b
       end

        return a

    end 

    fib_results = []

    n.times do |n|

    result = calculation(n)
    fib_results << result
    end 

    return fib_results

end

p fibonacci(100)

# Release #2: 
#bubble sort algorithm
#sorts a collection by moving left to right, compares each value w/next value calculating which value is higher

#method that takes an array as argument and swaps items til lowest...highest
def bubble_sorting array
#assign length of the array = variable(z)
 z = array.length
# like a while loop
 loop do
#boolean variable called "sorted" = false is when algorithm should exit
# if true keeps looping
   sorted = false
#Inside loop check the value of each element and compare it w/ the next one
# how many times it runs = z-1
   (z-1).times do |i|
     if array[i] > array[i+1]
       array[i], array[i+1]=array[i+1], array[i]
#ends loop once sorting = true        
       sorted = true
     end
   end

   break if not sorted
 end

 array
end
#when sorted = false - return sorted array
# show original numbers then sorted numbers.
x = [1, 6, 3, 7, 9, 10, 8, 5, 2, 11]
puts "Original Array:"
p [x]
puts "Data after Bubble Sorting Loop:"
p bubble_sorting(x)

