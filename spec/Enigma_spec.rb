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
      expect(@enigma.decrypt("keder ofulw", "02715", "040895")).to eq(expected)
  end


end
