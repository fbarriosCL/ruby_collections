require 'benchmark'
require 'bigdecimal/math'
require 'set'

class Computer

  def initialize
  end

  def add(computers)
    return 'Computer is nil' if computers.nil?
    database = []
    computers.each{ |computer| database << computer }
  end

end

class Desktop < Computer
end

class Notebook < Computer
end

@set =  Set.new ['HP', 'acer', 'mac', 'HP', 'HP']
@hash = Hash.new ['HP', 'acer', 'mac', 'HP', 'HP']
@array = Array.new ['HP', 'acer', 'mac', 'HP', 'HP']
@tree_set = SortedSet.new(['HP', 'acer', 'mac', 'HP', 'HP'])
# USER CPU   SYS CPU    USR + SYS  Elapsed
# 0.320000   0.020000   0.340000 (0.343562 )
#
puts "USER CPU   SYS CPU    USR + SYS  Elapsed"

puts 'example for set'
puts Benchmark.measure { Desktop.new.add(@set) }
puts 'example for array or list'
puts Benchmark.measure { Desktop.new.add(@array) }
puts 'example for hash'
puts Benchmark.measure { Notebook.new.add(@hash) }
puts 'example for tree_set'
puts Benchmark.measure { Notebook.new.add(@tree_set) }

