class Enigma

  def initialize
  end

  def encrypt(message, key = nil, date = nil)
    @keyable = Keyable.new(key)
    @offset = Offset.new(date)
    @shift = Shift.new(@keyable.keys, @offset.offsets)
    array = @shift.shifts.values.map {|value| value.to_i}
    encrypted = {}
    encrypted[:encryption] = y(message, array)
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
    decrypted[:decryption] = x(ciphertext, array)
    decrypted[:key] = key
    decrypted[:date] = @offset.date
    decrypted
  end



end
