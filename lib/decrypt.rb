require './spec_helper.rb'

enigma = Enigma.new
key = ARGV[2]
date = ARGV[3]

file_reader = File.open(ARGV[0], "r")
encrypted_text = file_reader.read
file_reader.close

decrypted_text = enigma.decrypt(encrypted_text.chomp, ARGV[2], ARGV[3] = nil)

writer = File.open(ARGV[1], "w")
writer.write(decrypted_text[:decryption])
writer.close

puts "Created '#{ARGV[1]}' with the key #{decrypted_text[:key]} and date #{decrypted_text[:date]}"
