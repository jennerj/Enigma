class Offset
  attr_reader :date
  def initialize(date)
    @date = date
  end

  def offset(date)
    squared = ((date.to_i)**2).to_s
    @offset_four = squared[-4..-1]
    # require "pry"; binding.pry
  end

  def offset_group
    offset(date)
    @offsets = Hash.new
    @offsets["A"] = @offset_four[0]
    @offsets["B"] = @offset_four[1]
    @offsets["C"] = @offset_four[2]
    @offsets["D"] = @offset_four[3]
    @offsets
  end
end
