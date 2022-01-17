#Enigma

Welcome to Enigma! This program uses a command line interface to run a message through an encryption and decryption process.

##How to:

####To Encrypt
- Enter the following into your command line
'ruby ./lib/encrypt.rb message.txt encrypted.txt'
- It should return the following
'Created 'encrypted.txt' with the key <5_digit_key> and date <DDMMYY>'
- View the created encrypted.txt file to see the encrypted message

####To Decrypt
- Enter the following into your command line
'ruby ./lib/decrypt.rb encrypted.txt decrypt.txt <5_digit_key> <DDMMYY>'
- It should return the following
'Created 'decrypted.txt' with the key <5_digit_key> and date <DDMMYY>'
- View the created decrypted.txt file to see the decrypted message.

##Self-Assessment

###Functionality

- Meets expectations. Message can be encrypted and decrypted. CLI interface runs as well.

###OOP

- Meets expectations. Tried to go back and refactor some things to make things more readable. Everything is formatted and indented, I could have used some modules if I would have had some more time.

###Ruby Conventions & Mechanics

- Below expectations. I feel like I needed just a little more time to go back and refactor some methods in my enigma class to make them easier to understand. I have a lot of comments on the methods in there to make them easier to understand the chunks.

###TDD

- Meets expectations. I got a little ahead of myself in the beginning of the project and I was writing some methods before the tests. I corrected myself very quickly however. It became tough for me once I got to Enigma to fully understand what I was trying to test as well.

###Version Control
