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
  @set.each do |set|
    puts set.to_yaml
  end
end

class StoreList

  @desktop  = Desktop.new(1, 'Apple', 'iMac Pro')
  @notebook = Notebook.new(2, 'Apple Notebook', 'iMacBook Pro')

  @array = Array.new
  @array.push(@desktop)
  @array.push(@notebook)

  @array.each do |array|
    puts array.to_yaml
  end
end

class StoreHash
  @desktop  = Desktop.new(1, 'Apple', 'iMac Pro')
  @notebook = Notebook.new(2, 'Apple Notebook', 'iMacBook Pro')

  @hash = Hash.new
  @hash.store('desktop', @desktop)
  @hash.store('notebook', @notebook)

  @hash.each do |key, value|
    puts value.to_yaml
  end
end

class StoreSortSet
  @desktop_primary  = Desktop.new(1, 'Apple', 'iMac Pro')
  
  @sort_set = SortedSet.new
  @sort_set.add(@desktop_primary)

  @sort_set.each do |sort_set|
    puts sort_set.to_yaml
  end
end

