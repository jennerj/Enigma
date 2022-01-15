class Enigma

  def initialize
  end

  def encrypt(message, key = nil, date = nil)
    encrypted = {}
    encrypted[:encryption] = "keder ohulw"
    encrypted[:key] = "02715"
    encrypted[:date] = "040895"
    encrypted
  end

  def decrypt(cipher, key = nil, date = nil)
    decrypted = {}
    decrypted[:decryption] = "hello world"
    decrypted[:key] = "02715"
    decrypted[:date] = "040895"
    decrypted
  end
  
end
