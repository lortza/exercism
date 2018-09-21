class Squares
  attr_reader :range

  def initialize(num)
    @range = (1..num).to_a
  end

  def square_of_sum
    @range.reduce(:+)**2
  end

  def sum_of_squares
    @range.map{|n| n**2}.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
