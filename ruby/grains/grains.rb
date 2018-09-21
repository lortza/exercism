class Grains

  def self.square(position)
    raise ArgumentError if position < 1 || position > 64
    grains = [1]
    while grains.length < position
      grains << (grains[-1] * 2)
    end
    grains.pop

  end

  def self.total(squares=64)
    (1..squares).map {|sq| self.square(sq)}.reduce(:+)
  end

end

module BookKeeping
  VERSION = 1
end
