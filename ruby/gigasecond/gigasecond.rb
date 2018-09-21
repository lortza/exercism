class Gigasecond
  def self.from(birthdate)
    birthdate + 1_000_000_000
  end
end

module BookKeeping
  VERSION = 6
end
