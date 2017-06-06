require 'minitest/benchmark'
require 'minitest/autorun'
require 'set'

class ComputerTest
  def add(computers)
    database = []
    computers.each{ |computer| database << computer }
  end
end

class DesktopTest < ComputerTest
end

class NotebookTest < ComputerTest
end

class BenchmarkTest < Minitest::Benchmark
  def setup
    @set      = Set.new ['HP', 'Acer', 'Apple', 'HP', 'HP']
    @hash     = Hash.new ['HP', 'Acer', 'Apple', 'HP', 'HP']
    @array    = Array.new ['HP', 'Acer', 'Apple', 'HP', 'HP']
    @tree_set = SortedSet.new(['HP', 'Acer', 'Apple', 'HP', 'HP'])
  end

  def bench_set
    assert_performance 0.99 do |n|
      n.times do
        DesktopTest.new.add(@set)
      end
    end
  end

  def bench_hash
    assert_performance 0.99 do |n|
      n.times do
        DesktopTest.new.add(@hash)
      end
    end
  end

  def bench_array
    assert_performance 0.99 do |n|
      n.times do
        NotebookTest.new.add(@array)
      end
    end
  end

  def bench_tree_set
    assert_performance 0.99 do |n|
      n.times do
        NotebookTest.new.add(@tree_set)
      end
    end
  end
end

