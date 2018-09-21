class Prime
  def self.nth(num)
    raise ArgumentError if num == 0
    primes = []
    i = 2
    until primes.length == num
      primes << i if self.is_prime(i)
      i += 1
    end
    primes.pop
  end

  def self.is_prime(num)
    (2..(num - 1)).each do |n|
      return false if num % n == 0
    end
    true
  end

end

module BookKeeping
  VERSION = 1
end