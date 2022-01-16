require './spec_helper.rb'

RSpec.describe Offset do

  it 'exists' do
    offset = Offset.new("040895")
  end

  it 'generates offset from the date recieved' do
    offset = Offset.new("040895")
    expect(offset.offsets).to eq({"A" => "1", "B" => "0", "C" => "2", "D" => "5"})
  end
end
