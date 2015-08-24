require 'spec_helper'

module Knapsack
  describe ZeroOneKnapsack do
    describe '#pack' do
      subject { zero_one_knapsack.pack(volume, list) }

      let(:zero_one_knapsack) { Knapsack::ZeroOneKnapsack.new(weight: :weight, value: :value) }

      shared_examples 'a max value of knapsack' do
        its([:max_value]) { is_expected.to eq(max_value) }
        it 'history summary should equal max_value' do
          expect(subject[:history].reduce(0) { |sum, subject| sum + subject.value }).to eq(max_value)
        end
      end

      context '#package1' do
        let(:volume) { 1000 }
        let(:list) do
          [
            Knapsack::Subject.new(weight: 144, value: 990),
            Knapsack::Subject.new(weight: 487, value: 436),
            Knapsack::Subject.new(weight: 210, value: 673),
            Knapsack::Subject.new(weight: 567, value: 58),
            Knapsack::Subject.new(weight: 1056, value: 897)
          ]
        end
        let(:max_value) { 2099 }

        it_behaves_like 'a max value of knapsack'
      end

      context '#package2' do
        let(:volume) { 100 }
        let(:list) do
          [
            Knapsack::Subject.new(weight: 99, value: 90),
            Knapsack::Subject.new(weight: 77, value: 92),
            Knapsack::Subject.new(weight: 22, value: 22),
            Knapsack::Subject.new(weight: 29, value: 87),
            Knapsack::Subject.new(weight: 50, value: 46)
          ]
        end
        let(:max_value) { 133 }

        it_behaves_like 'a max value of knapsack'
      end

      context '#package3' do
        let(:volume) { 200 }
        let(:list) do
          [
            Knapsack::Subject.new(weight: 79, value: 83),
            Knapsack::Subject.new(weight: 58, value: 14),
            Knapsack::Subject.new(weight: 86, value: 54),
            Knapsack::Subject.new(weight: 11, value: 79),
            Knapsack::Subject.new(weight: 28, value: 72),
            Knapsack::Subject.new(weight: 62, value: 52),
            Knapsack::Subject.new(weight: 15, value: 48),
            Knapsack::Subject.new(weight: 68, value: 62)
          ]
        end
        let(:max_value) { 334 }
        let(:history) { [list[0], list[3], list[4], list[5], list[6]] }

        it_behaves_like 'a max value of knapsack'
      end
    end
  end
end
