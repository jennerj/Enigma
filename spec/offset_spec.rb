require './spec_helper.rb'

RSpec.describe Offset do

  it 'exists' do
    offset = Offset.new("040895")
  end

  it 'generates offset numbers from the date recieved' do
    offset_gen = Offset.new("040895")
    expect(offset_gen.offset("040895")).to eq("1025")
  end

  it 'generates offsets A..D using offset numbers' do
    offset_gen = Offset.new("040895")
    expect(offset_gen.offset_group).to eq({"A" => "1", "B" => "0", "C" => "2", "D" => "5"})

  end
end
