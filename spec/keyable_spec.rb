require './spec_helper.rb'

RSpec.describe Keyable do

  it 'exists' do
    keyable = Keyable.new("02715")
    expect(keyable).to be_instance_of(Keyable)
  end

  it 'has attributes' do
    keyable = Keyable.new("02715")
    expect(keyable.key).to eq("02715")
  end

  it 'generates a random 5-digit key to use' do
    random_key = Keyable.new
    random_key.key
    expect(random_key.key).to be_a(String)
    expect(random_key.key.length).to eq(5)
  end

  it 'can generate four new keys' do
    keyable = Keyable.new("02715")
    expect(keyable.gen_four_keys("02715")).to eq({"A" => "02", "B" => "27", "C" => "71", "D" => "15"})
  end

end
