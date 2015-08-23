require 'rspec'
require 'knapsack/version'

module Knapsack
  describe 'Version' do
    subject { Knapsack::VERSION }
    it { should eq('0.0.1') }
  end
end
