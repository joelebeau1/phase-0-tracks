# Release 0: Simple Search
# Write a method that takes an array of integers and an integer to search for;
# method should return index of integer being searched for or nil if integer isn't present in array

# def search_array(array, integer)
#     # Search array for given integer
#     array.each_with_index do |item, index|

#         if item.eql? integer
#             p index
#         elsif !item.eql? integer
#             nil
#         else puts "nil"
#         end
    
#     end
# end 

# array = [10, 20, 30, 40, 50]
# search_array(array, 4)

# # Release 1: Fibonacci Method

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

# p fibonacci(6)
# Write first 15 Fibonacci numbers in sequence.
