module Knapsack
  class ZeroOneKnapsack
    def initialize(weight:, value:)
      @weight = weight
      @value  = value
    end

    def pack(volume, subjects)
      result = Array.new(volume + 1) { 0 }

      subjects.each do |subject|
        (subject.send(@weight)..volume).reverse_each do |j|
          result[j] = [result[j-subject.send(@weight)]+subject.send(@value), result[j]].max
        end
      end
      result[volume]
    end
  end
end
