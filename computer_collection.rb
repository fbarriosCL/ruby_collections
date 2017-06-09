require 'benchmark'
require 'yaml'
require 'set'

class Computer
  attr_accessor :id, :brand, :model
end

class Desktop < Computer
end

class Notebook < Computer
end

@desktop = Desktop.new
@desktop.id = 1
@desktop.brand = 'Apple'
@desktop.model = 'iMac Pro'

@notebook = Notebook.new
@notebook.id = 2
@notebook.brand = 'Apple'
@notebook.model = 'MacBook Pro'

@set = Set.new
@set.add(@desktop)
@set.add(@notebook)

time_set = Benchmark.measure do
  @set.each { |computers| puts computers.to_yaml }
end

@hash = Hash.new
@hash.store('desktop', @desktop)
@hash.store('notebook', @notebook)

time_hash = Benchmark.measure do
  @hash.each { |key, value| puts value.to_yaml }
end

@array = Array.new
@array.push(@desktop)
@array.push(@notebook)

time_array = Benchmark.measure do
  @array.each { |computers| puts computers.to_yaml }
end

@tree_set = SortedSet.new
@tree_set.add(@desktop)
@tree_set.add(@notebook)

#time_tree_set = Benchmark.measure do
  @tree_set.each { |computers| puts computers.to_yaml }
#end

# User CPU Time     System CPU Time     User CPU + System CPU     Elapsed real time
# 0.320000          0.020000            0.340000                  (0.343562)

puts 'USER-CPU   SYS-CPU   USER+SYS   Elapsed'

puts 'Example for set'
puts time_set
puts 'Example for hash'
puts time_hash
puts 'Example for array or list'
puts time_array
#puts 'Example for tree_set'
#puts time_tree_set

