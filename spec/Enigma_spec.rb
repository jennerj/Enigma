require './spec_helper.rb'

RSpec.describe Enigma do
  before(:each) do
    @enigma = Enigma.new
  end

  it 'exists' do
    expect(@enigma).to be_a(Enigma)
  end

  it 'can encrypt message with key and date' do
    expected = {encryption: "keder ohulw",
                key: "02715",
                date: "040895"
              }
    expect(@enigma.encrypt("hello world", "02715", "040895")).to eq(expected)
  end

  it 'can decrypt message with key and date' do
    expected = {decryption: "hello world",
        key: "02715",
        date: "040895"
      }
      expect(@enigma.decrypt("keder ohulw", "02715", "040895")).to eq(expected)
  end

  #encrypt using today's date
  it 'can encrypt using todays date' do
    expect(@enigma.encrypt("hello world", "02715")).to be_a(Hash)
    expect(@enigma.encrypt("hello world", "02715").count).to eq(3)
  end

  #decrypts using today's date
  it 'can decrypt using todays date' do
    encrypted = @enigma.encrypt("hello world", "02715")
    expect(@enigma.decrypt(encrypted[:encryption], :key)).to be_a(Hash)
    expect(@enigma.decrypt(encrypted[:encryption], :key).count).to eq(3)
  end

  it 'can encrypt and decrypt using a random key' do
    encrypted = @enigma.encrypt("hello world")
    expect(@enigma.decrypt(encrypted[:encryption], encrypted[:key])[:decryption]).to eq("hello world")
  end
  #tests to make sure that just the message changes after encryption
  it 'can encrypt a message without changing the other characters' do
    expected = {encryption: "keder ohulw!",
                key: "02715",
                date: "040895"}
    expect(@enigma.encrypt("hello world!", "02715", "040895")).to eq(expected)
  end

  #tests to make sure that just the message changes after decryption
  it 'can decrypt a message without changing the other characters' do
    expected = {decryption: "hello world!",
                key: "02715",
                date: "040895"}
    expect(@enigma.decrypt("keder ohulw!", "02715", "040895")).to eq(expected)
  end
end
