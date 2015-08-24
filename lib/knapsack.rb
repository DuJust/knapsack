require 'knapsack/version'
project_root = File.dirname(__FILE__) + '/..'
$LOAD_PATH << "#{project_root}/lib"

Dir["#{project_root}/lib/**/*.rb"].each { |file| require file }

module Knapsack
end
