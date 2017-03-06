#Encrypt method: move each letter in a string one letter forward

def encrypt(password)
  index =  0
  while index < password.length
    password[index] = password[index].next!
    index += 1
  end
  password
end 

#Decrypt: reverse

def decrypt(string)
decrypted_string = string.tr('bcdefghijklmnopqrstuvwxyza', 'abcdefghijklmnopqrstuvwxyz')
decrypted_string
end 

#Get user input: encrypt or decrypt

more_passwords = "yes"

until more_passwords == "no"

puts "Hello comrade, do you need to encrypt or decrypt a password?"
method_type = gets.chomp.downcase

if method_type == "encrypt"
    puts "Enter password now"
    agent_password = gets.chomp.downcase
    puts "Encrypted password is #{encrypt(agent_password)}"

elsif method_type == "decrypt"
    puts "Enter password now"
    agent_password = gets.chomp.downcase
    puts "Decrypted password is #{decrypt(agent_password)}"
else false
end

puts "Do you have another password to encrypt or decrypt? [yes/no]"
more_passwords = gets.chomp.downcase

end

puts "Operation complete: this operation never happened"


#Get user password

#Add logic to choose method based on user input


#Perform operation and print results, then exits