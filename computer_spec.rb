require 'minitest/autorun'
require_relative 'computer'

describe Computer do

  describe "we are going to test the method 'add' when computers is nil" do
    it "must respond the message: Computer is nil" do
      @computer = nil
      Notebook.new.add(@computer).must_equal 'Computer is nil'
    end
  end

  describe "we are going to test the method set" do
    it "must respond to array with unique values" do
      @computers = Set.new ['HP','HP','HP','HP','HP','HP']
      Desktop.new.add(@computers).must_equal ['HP'].to_set
    end
  end
end