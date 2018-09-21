# Option 1: straight math
class Year
  def self.leap?(year)
    year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
  end
end

# Option 2: concept abstraction
class Year
  def self.leap?(year)
    self.div_by_4(year) && ( self.not_div_by_100(year) || self.div_by_400(year) )
  end

  def self.div_by_4(year)
    year % 4 == 0
  end

  def self.not_div_by_100(year)
    year % 100 != 0
  end

  def self.div_by_400(year)
    year % 400 == 0
  end

end


module BookKeeping
  VERSION = 3
end
