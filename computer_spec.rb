require_relative 'computer'
require 'minitest/autorun'

describe Computer do
  describe "we are going to test the method 'add' when computers is nil" do
    it "must respond the message: Computer is nil" do
      @computer = nil
      notebook = Notebook.new.add(@computer)
      notebook.must_equal 'Computer is nil'
      puts notebook.to_s
    end
  end

  describe "we are going to test the method set" do
    it "must respond to array with unique values" do
      @computers = Set.new ['HP', 'HP', 'HP', 'HP', 'HP']
      desktop = Desktop.new.add(@computers)
      desktop.must_equal ["HP"]
      puts desktop.to_s
    end
  end

  describe "we are going to test the method hash" do
    it "must respond to array with various values" do
      @computers = Hash[1, 'HP', 2, 'Acer', 3, 'Apple', 4, 'HP', 5, 'HP']
      desktop = Desktop.new.add(@computers)
      desktop.must_equal ["HP", "Acer", "Apple", "HP", "HP"]
      puts desktop.to_s
    end
  end

  describe "we are going to test the method array" do
    it "must respond to array with various values" do
      @computers = Array.new ['HP', 'Acer', 'Apple', 'HP', 'HP']
      notebook = Notebook.new.add(@computers)
      notebook.must_equal ["HP", "Acer", "Apple", "HP", "HP"]
      puts notebook.to_s
    end
  end

  describe "we are going to test the method tree_set" do
    it "must respond to array with unique values" do
      @computers = SortedSet.new(['HP', 'HP', 'HP', 'HP', 'HP'])
      notebook = Notebook.new.add(@computers)
      notebook.must_equal ["HP"]
      puts notebook.to_s
    end
  end
end

