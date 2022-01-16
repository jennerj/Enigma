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

  def gen_four_keys(key)
    @keys = {}
    @keys["A"] = (key = @key[0..1])
    @keys["B"] = (key = @key[1..2])
    @keys["C"] = (key = @key[2..3])
    @keys["D"] = (key = @key[3..4])
    @keys
  end
end
