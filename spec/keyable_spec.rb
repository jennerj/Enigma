require './spec_helper.rb'

RSpec.describe Keyable do
  before(:each) do
    @keyable = Keyable.new
  end

  it 'exists' do
    expect(@keyable).to be_a(Keyable)
  end
end
