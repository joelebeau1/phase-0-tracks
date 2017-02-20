#Encrypt method: move each letter in a string one letter forward

def encrypt(string)
  index =  0
  while index < string.length
    string[index] = string[index].next!
    index += 1
  end
end 

#Decrypt: reverse

def decrypt(string)
string = string.tr('b', 'a').tr('c', 'b').tr('d', 'c').tr('e', 'd').tr('f', 'e').tr('g', 'f').tr('h', 'g').tr('i', 'h').tr('j', 'i').tr('k', 'j').tr('l', 'k').tr('m', 'l').tr('n', 'm').tr('o', 'n').tr('p', 'o').tr('q', 'p').tr('r', 'q').tr('s', 'r').tr('t', 's').tr('u', 't').tr('v', 'u').tr('w', 'v').tr('x', 'w').tr('y', 'x').tr('z', 'y').tr('a', 'z')
end 

#Get user input: encrypt or decrypt
puts "Hello comrade, do you need encryption or decryption services?"
method_type = gets.chomp.downcase

#Get user password
puts "Enter your password now"
password = "gets.chomp"

#Add logic to choose method based on user input
if method_type == "encryption";
    encrypt(agent_password)
    p agent_password
end 
if method_type == "decryption";
    decrypt(agent_password)
end 

puts "Operation complete"

#Perform operation and print results, then exits