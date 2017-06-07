require 'bigdecimal/math'
require 'benchmark'
require 'set'

class Computer
  def add(computers)
    return 'Computer is nil' if computers.nil?
    database = []
    if computers.is_a?(Hash)
      computers.each { |key, value| database << value }
    else
      computers.each { |computer| database << computer }
    end
    return database
  end
end

class Desktop < Computer
end

class Notebook < Computer
end

@set      = Set.new ['HP', 'Acer', 'Apple', 'HP', 'HP']
@hash     = Hash[1, 'HP', 2, 'Acer', 3, 'Apple', 4, 'HP', 5, 'HP']
@array    = Array.new ['HP', 'Acer', 'Apple', 'HP', 'HP']
@tree_set = SortedSet.new(['HP', 'Acer', 'Apple', 'HP', 'HP'])

# USER CPU   SYS CPU    USR + SYS  Elapsed
# 0.320000   0.020000   0.340000 (0.343562)

puts "USER-CPU   SYS-CPU   USR+SYS   Elapsed"

puts 'example for set'
puts Benchmark.measure { Desktop.new.add(@set) }
puts 'example for array or list'
puts Benchmark.measure { Desktop.new.add(@array) }
puts 'example for hash'
puts Benchmark.measure { Notebook.new.add(@hash) }
puts 'example for tree_set'
puts Benchmark.measure { Notebook.new.add(@tree_set) }

