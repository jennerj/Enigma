require './spec_helper.rb'

RSpec.describe Keyable do
  before(:each) do
    @keyable = Keyable.new("02715")
  end

  it 'exists' do
    expect(@keyable).to be_a(Keyable)
  end

  it 'has attributes' do
    expect(@keyable.key).to eq("02715")
  end

  it 'generates a random 5-digit key to use' do
    random_key = Keyable.new
    random_key.key
    expect(random_key.key).to be_a(String)
    expect(random_key.key.length).to eq(5)
  end

end
