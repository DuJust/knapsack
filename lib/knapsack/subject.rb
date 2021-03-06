class Knapsack::Subject
  attr_accessor :weight, :value

  def initialize(weight:, value:)
    @weight = weight
    @value  = value
  end

  def to_s
    "weight: #{weight}, value: #{value}"
  end
end
