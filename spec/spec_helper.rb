require 'rspec/core'
require 'rspec/its'

require_relative '../lib/knapsack'

RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.formatter = :documentation
end
