class Shift
  def initialize(keys, offsets)
    @keys = keys
    @offsets = offsets
  end

  def sum_of_keys_and_offsets(keys, offsets)
    shifts = keys.merge(offsets) do |k, keys, offsets|
      (keys.to_i + offsets.to_i).to_s
    end
  end
end
