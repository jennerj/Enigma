require './spec_helper.rb'

enigma = Enigma.new
key = ARGV[2]
date = ARGV[3]

file_reader = File.open(ARGV[0], "r")
text = file_reader.read
file_reader.close
