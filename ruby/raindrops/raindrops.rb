class Raindrops
  DROPS = [3, 5, 7]

  def self.convert(num)
    factors = (1..num).select { |n|num % n == 0}
    return num.to_s if factors.length == (factors - DROPS).length
    output = ''
    output << 'Pling' if factors.include?(3)
    output << 'Plang' if factors.include?(5)
    output << 'Plong' if factors.include?(7)
    output
  end
end


module BookKeeping
  VERSION = 3
end
