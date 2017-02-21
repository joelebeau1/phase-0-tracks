def practice_method (value_1, value_2)
    sum = value_1 + value_2
    product = value_1 * value_2
    p "the block hasn't run yet"
    yield(sum, product)
    # sum + product
end 

puts practice_method(2, 4) { |value_1, value_2| p "this block is running on #{value_1} and #{value_2}" }


