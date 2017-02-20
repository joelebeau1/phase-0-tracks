#Encrypt method: move each letter in a string one letter forward

def encrypt(password)
  index =  0
  while index < password.length
    password[index] = password[index].next!
    index += 1
  end
end 
    

#1. Define method & parameter
#2. Create +1 letter code

#Decrypt: reverse