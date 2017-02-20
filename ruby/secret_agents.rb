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
decrypted_string = string.tr('b', 'a').tr('c', 'b').tr('d', 'c').tr('e', 'd').tr('f', 'e').tr('g', 'f').tr('h', 'g').tr('i', 'h').tr('j', 'i').tr('k', 'j').tr('l', 'k').tr('m', 'l').tr('n', 'm').tr('o', 'n').tr('p', 'o').tr('q', 'p').tr('r', 'q').tr('s', 'r').tr('t', 's').tr('u', 't').tr('v', 'u').tr('w', 'v').tr('x', 'w').tr('y', 'x').tr('z', 'y').tr('a', 'z')
p decrypted_string
end 