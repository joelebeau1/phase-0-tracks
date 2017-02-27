#5.5 Release 0: Attempt a tricky algorithm

#Write a method that intakes a spy's real name and outputs a fake name by:

def name_swap (name_1)
    name_array = name_1.split('').reverse!.join(' ')
end 

# Changing all vowels to the next vowel in 'a,e,i,o,u'

def vowel_swap (reversed_name)

end 

# Changes all consonants to next alphabetic consonant


puts "State your name comrade:"
spy_name = gets.chomp
swapped_name = name_swap(spy_name)
p swapped_name

vowel_and_name_swap = vowel_swap(swapped_name)
p vowel_and_name_swap




# Consider: when converting strings to arrays is helpful;
# How to determine if a letter is a vowel;
# How to deal with uppercase input;
# How to handle edge cases (is user inputs 'u' or 'z' and there in no "next" character)