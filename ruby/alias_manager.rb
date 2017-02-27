#5.5 Release 0: Attempt a tricky algorithm

#Write a method that intakes a spy's real name and outputs a fake name by:

def name_swap (spy_name)
    name_array = spy_name.split.reverse!
    spy_name = name_array.join(' ')
end 

puts "State your name comrade:"
spy_name = gets.chomp
swapped_name = name_swap(spy_name)
p swapped_name

# Changing all vowels to the next vowel in 'a,e,i,o,u'

# Changes all consonants to next alphabetic consonant

# Consider: when converting strings to arrays is helpful;
# How to determine if a letter is a vowel;
# How to deal with uppercase input;
# How to handle edge cases (is user inputs 'u' or 'z' and there in no "next" character)