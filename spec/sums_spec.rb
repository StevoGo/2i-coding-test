require_relative '../sums'
require 'pry'

describe Sums do

  before do
    @sums = Sums.new
  end

  describe 'sum_pairs' do

    it 'outputs 0 when no sum pairs found' do
      int = 1
      arr = [3, 4, 5, 6]
      pairs_count = @sums.sum_pairs(array: arr, integer: int)
      expect(pairs_count).to eq(0)
    end

    it 'outputs 0 when the array is empty' do
      int = 1
      arr = []
      pairs_count = @sums.sum_pairs(array: arr, integer: int)
      expect(pairs_count).to eq(0)
    end

    it 'outputs 1 when there is 1 sum pair' do
      int = 15
      arr = [0, 15, 32, 2000, 15000]
      pairs_count = @sums.sum_pairs(array: arr, integer: int)
      expect(pairs_count).to eq(1)
    end

    it 'outputs 2 when there are 2 sum pairs (with duplicate numbers equalling pair sum)' do
      int = 42
      arr = [1, 1, 10, 32, 41]
      pairs_count = @sums.sum_pairs(array: arr, integer: int)
      expect(pairs_count).to eq(2)
    end


  end
end