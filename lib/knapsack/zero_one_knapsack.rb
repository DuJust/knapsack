module Knapsack
  class ZeroOneKnapsack
    def initialize(weight:, value:)
      @weight = weight
      @value  = value
    end

    def pack(volume, subjects)
      weights  = Array.new(volume + 1) { 0 }
      packages = Array.new(volume + 1) { [] }

      subjects.each do |subject|
        (weight_of(subject)..volume).reverse_each do |weight|
          compare_weight = weight - weight_of(subject)
          if compare_weight >= 0 && weights[compare_weight] + value_of(subject) > weights[weight]
            weights[weight]  = weights[compare_weight] + value_of(subject)
            packages[weight] = packages[compare_weight].clone << subject
          end
        end
      end
      { max_value: weights[volume], history: packages[volume] }
    end

    def value_of(subject)
      subject.send(@value).to_i
    end

    def weight_of(subject)
      subject.send(@weight).to_i
    end
  end
end
