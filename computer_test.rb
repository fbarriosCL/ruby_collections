require_relative 'computer'
require 'minitest/benchmark'
require 'minitest/autorun'
require 'set'

class BenchmarkTest < Minitest::Benchmark
  def setup
    @desktop  = Desktop.new
    @notebook = Notebook.new
    @set      = Set.new ['HP', 'Acer', 'Apple', 'HP', 'HP']
    @hash     = Hash[1, 'HP', 2, 'Acer', 3, 'Apple', 4, 'HP', 5, 'HP']
    @array    = Array.new ['HP', 'Acer', 'Apple', 'HP', 'HP']
    @tree_set = SortedSet.new(['HP', 'Acer', 'Apple', 'HP', 'HP'])
  end

  def bench_set
    validation = proc {|x|}
    assert_performance validation do |n|
      @desktop.add(@set)
    end
  end

  def bench_hash
    validation = proc {|x|}
    assert_performance validation do |n|
      @desktop.add(@hash)
    end
  end

  def bench_array
    validation = proc {|x|}
    assert_performance validation do |n|
      @notebook.add(@array)
    end
  end

  def bench_tree_set
    validation = proc {|x|}
    assert_performance validation do |n|
      @notebook.add(@tree_set)
    end
  end
end

