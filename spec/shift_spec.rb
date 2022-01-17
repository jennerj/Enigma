require './spec_helper.rb'

RSpec.describe Shift do
  before(:each) do
    @keyable = Keyable.new("02715")
    @offset = Offset.new("040895")

    @keyable.gen_four_keys("02715")
    @offset.offset_group

    @shift = Shift.new(@keyable.keys, @offset.offsets)
  end

  it 'exists' do
    expect(@shift).to be_instance_of(Shift)
  end

end
