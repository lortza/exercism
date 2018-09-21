require 'prime'

class Sieve
  def initialize(num)
    @num = num
  end

  def primes
    output = []
    Prime.each(@num){|prime| output << prime}
    output
  end
end

module BookKeeping
  VERSION = 1
end
