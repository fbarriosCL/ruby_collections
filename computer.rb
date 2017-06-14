require 'benchmark'
require 'yaml'
require 'set'

class Computer
  attr_accessor :id, :brand, :model

  def initialize(id, brand, model)
    @id     = id
    @brand  = brand
    @model  = model
  end
end

class Desktop < Computer
end

class Notebook < Computer
end

class StoreSet
  @desktop  = Desktop.new(1, 'Apple', 'iMac Pro')
  @notebook = Notebook.new(2, 'Apple Notebook', 'iMacBook Pro')
  
  @set = Set.new
  @set.add(@desktop)
  @set.add(@notebook)

  time_set = Benchmark.measure do
    @set.each { |set| puts set.to_yaml }
  end

  puts '  Example for Set'
  puts '  USER-CPU   SYS-CPU    USER+SYS Elapsed'
  puts time_set
end

class StoreList
  @desktop  = Desktop.new(1, 'Apple', 'iMac Pro')
  @notebook = Notebook.new(2, 'Apple Notebook', 'iMacBook Pro')

  @array = Array.new
  @array.push(@desktop)
  @array.push(@notebook)

  time_list = Benchmark.measure do
    @array.each { |array| puts array.to_yaml }
  end

  puts '  Example for Array'
  puts '  USER-CPU   SYS-CPU    USER+SYS Elapsed'
  puts time_list
end

class StoreHash
  @desktop  = Desktop.new(1, 'Apple', 'iMac Pro')
  @notebook = Notebook.new(2, 'Apple Notebook', 'iMacBook Pro')

  @hash = Hash.new
  @hash.store('desktop', @desktop)
  @hash.store('notebook', @notebook)

  time_hash = Benchmark.measure do
    @hash.each { |key, value| puts value.to_yaml }
  end

  puts '  Example for Hash'
  puts '  USER-CPU   SYS-CPU    USER+SYS Elapsed'
  puts time_hash
end

class StoreSortSet
  @desktop_primary  = Desktop.new(1, 'Apple', 'iMac Pro')
  
  @sort_set = SortedSet.new
  @sort_set.add(@desktop_primary)

  time_sort_set = Benchmark.measure do
    @sort_set.each { |sort_set| puts sort_set.to_yaml }
  end

  puts '  Example for SortedSet'
  puts '  USER-CPU   SYS-CPU    USER+SYS Elapsed'
  puts time_sort_set
end

