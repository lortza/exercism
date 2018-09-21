class Pangram
  def self.pangram?(phrase)
    alphabet = ('a'..'z').to_a
    processed_phrase = phrase.downcase.gsub(/[^a-z]/, '').chars.uniq.sort
    processed_phrase == alphabet
  end
end

module BookKeeping
  VERSION = 5
end
