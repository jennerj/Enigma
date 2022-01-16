require './spec_helper.rb'

enigma = Enigma.new
#second and third argument passed in
key = ARGV[2]
date = ARGV[3]

file_reader = File.open(ARGV[0], "r")
