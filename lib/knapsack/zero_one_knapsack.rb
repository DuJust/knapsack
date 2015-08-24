module Knapsack
  class ZeroOneKnapsack
    def initialize(weight:, value:)
      @weight = weight
      @value  = value
    end

    def pack(volume, subjects)
      result   = Array.new(volume + 1) { 0 }
      packages = Array.new(volume + 1) { [] }

      subjects.each do |subject|
        (subject.send(@weight)..volume).reverse_each do |weight|
          compare_weight = weight-subject.send(@weight)
          if compare_weight > 0 && result[compare_weight] + subject.send(@value) > result[weight]
            result[weight]   = result[compare_weight] + subject.send(@value)
            packages[weight] = packages[compare_weight].clone << subject
          end
        end
      end
      { max_value: result[volume], history: packages[volume] }
    end
  end
end
