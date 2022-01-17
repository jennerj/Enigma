require_relative './enigma'

enigma = Enigma.new
key = ARGV[2]
date = ARGV[3]

file_reader = File.open(ARGV[0], "r")
text = file_reader.read
file_reader.close

encrypted_text = enigma.encrypt(text.chomp, key, date)

writer = File.open(ARGV[1], "w")
writer.write(encrypted_text[:encryption])
writer.close

puts "Created '#{ARGV[1]}' with the key #{encrypted_text[:key]} and date #{encrypted_text[:date]}"
