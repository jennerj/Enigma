class Keyable
  attr_accessor :key

  def initialize(key = nil)
    @key = generate(key)
  end

  def generate(key)
    if key == nil
      @key = 5.times.map{rand(5)}.join
    else
      key
    end
  end
end
