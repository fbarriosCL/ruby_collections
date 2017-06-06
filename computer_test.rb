require_relative 'computer'
require 'minitest/benchmark'
require 'minitest/autorun'
require 'set'

class BenchmarkTest < Minitest::Benchmark
  def setup
    @brands   = ['HP', 'Acer', 'Apple', 'HP', 'HP']
    @desktop  = Desktop.new
    @notebook = Notebook.new
    @set      = Set.new(@brands)
    @hash     = Hash.new(@brands)
    @array    = Array.new(@brands)
    @tree_set = SortedSet.new(@brands)
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

