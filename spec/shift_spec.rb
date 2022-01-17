require './spec_helper.rb'

RSpec.describe Shift do
  before(:each) do
    @keyable = Keyable.new("02715")
    @offset = Offset.new("040895")

    @keyable.gen_four_keys
    @offset.offset_group

    @shift = Shift.new(@keyable.keys, @offset.offsets)
  end

  it 'exists' do
    @shift = Shift.new(@keyable.keys, @offset.offsets)
    expect(@shift).to be_instance_of(Shift)
  end

  it 'can add keys and offsets' do
    expected = {"A" => "3", "B" => "27", "C" => "73", "D" => "20"}
    expect(@shift.sum_of_keys_and_offsets).to eq(expected)
  end
end
