class CleanPhrase

  attr_accessor :cleaned
  def initialize(phrase)
    @phrase = phrase
    @cleaned = @phrase.downcase.gsub(/,/, " ").gsub(/\\\n/, ' ').gsub(/( '|' )/, ' ').gsub(/[^A-Za-z0-9' ]/, '')
  end

  def clean(output)
    output = output.downcase
    output = output.normalize_case
    output = output.remove_commas
    output = output.remove_newlines
    output = output.remove_quotes
    output = output.remove_non_alpha_numeric
  end

  # protected

  def normalize_case
    downcase
  end

  def remove_commas
    gsub(/,/, " ")
  end

  def remove_newlines
    gsub(/\\\n/, ' ')
  end

  def remove_quotes
    gsub(/( '|' )/, ' ')
  end

  def remove_non_alpha_numeric
    gsub(/[^A-Za-z0-9' ]/, '')
  end
end

class Phrase
  def initialize(phrase)
    clean_phrase = CleanPhrase.new(phrase).cleaned
    @phrase = clean_phrase.split(" ")
  end

  def word_count
    ledger = {}
    @phrase.each do |word|
      if ledger.keys && ledger.keys.include?(word)
        ledger[word] += 1
      else
        ledger[word] = 1
      end
    end
    ledger
  end
end


module BookKeeping
  VERSION = 1
end


a = "testing,  1     2 testing"
b = 'in All worlds, in which all k1ttens reign supreme ^$#$%^!faces'
c = "Joe can't tell between Large, 'large', and large."
d = "car: carpet as java: javascript!!&@$%^&"
phrase = Phrase.new(c)
p phrase.word_count
