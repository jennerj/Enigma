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

  # def generate_four_keys(key)
  #   keys = {}
  #   key_a = key[0..1]
  #   key_b = key[1..2]
  #   key_c = key[2..3]
  #   key_d = key[3..4]
  #   keys
  # end
end
