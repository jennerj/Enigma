require './spec_helper.rb'
class Enigma

  def initialize
  end

  def encrypt(message, key = nil, date = nil)
    @keyable = Keyable.new(key)
    @offset = Offset.new(date)
    @shift = Shift.new(@keyable.keys, @offset.offsets)
    array = @shift.shifts.values.map {|value| value.to_i}
    # require "pry"; binding.pry
    encrypted = {}
    encrypted[:encryption] = shifted_message(message, array)
    encrypted[:key] = @keyable.key
    encrypted[:date] = @offset.date
    encrypted
  end

  def decrypt(ciphertext, key = nil, date = nil)
    @keyable = Keyable.new(key)
    @offset = Offset.new(date)
    @shift = Shift.new(@keyable.keys, @offset.offsets)
    array = @shift.shifts.values.map {|value| value.to_i}
    decrypted = {}
    decrypted[:decryption] = shifted_cipher(ciphertext, array)
    decrypted[:key] = key
    decrypted[:date] = @offset.date
    decrypted
  end

  def shifted_message(message, shifts_array)
    #create character set
    alphabet_array = ("a".."z").to_a << " "
    #creates encrypted text placeholder and downcases message
    encrypted_text = ""
    message.downcase!
    #cycles through the shifts_array the count of the (keys)
    shift_loop = shifts_array.cycle(message.length)
    #each character if it includes letter then proceed, unless special character
      message.chars.each do |letter|
        if alphabet_array.include?(letter)
          #grabs next key out of shift loop
          shift_letter_amount = shift_loop.next
          #if letter = a then alphabet_array.index(letter) is 0 + key from above(shift_letter_amount)
          new_index = alphabet_array.index(letter) + shift_letter_amount
          # if number passed into new_index is higher than usable index number (ie..27) then reduce till usable
          new_index = new_index % 27
          #generates new index value and then pulls encrypted letter from alphabet array
          new_letter = alphabet_array[new_index]
          #placeholder encrypted messaged gets letter added to it
          encrypted_text << new_letter.to_s
        elsif
          #if special character dump in
          encrypted_text << letter.to_s
        end
      end
      encrypted_text
  end

  def shifted_cipher(ciphertext, shifts_array)
    alphabet_array = ("a".."z").to_a << " "
    decrypted_text = ""
    ciphertext.to_s
    shift_loop = shifts_array.cycle(ciphertext.length)
      ciphertext.chars.each do |letter|
        if alphabet_array.include?(letter)
          shift_letter_amount = shift_loop.next
          new_index = alphabet_array.index(letter) - shift_letter_amount
          # require "pry"; binding.pry
          # if new_index < 0
          #   new_index = 27 % (new_index * -1)
          # end
          if new_index < -81
            new_index = new_index + 108
          end
          if new_index < -54
            new_index = new_index + 81
          end
          if new_index < -27
            new_index = new_index + 54
          end
          if new_index < 0
            new_index = new_index + 27
          end
          new_letter = alphabet_array[new_index]
          decrypted_text << new_letter.to_s
        elsif
          decrypted_text << letter
        end
      end
      decrypted_text
  end
end
