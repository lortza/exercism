class Phrase
  def initialize(phrase)
    @phrase = phrase.clean.split(" ")
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


class String
  def clean
    self.normalize_case
      .remove_commas
      .remove_newlines
      .remove_quotes
      .remove_non_alpha_numeric
  end

  protected

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


module BookKeeping
  VERSION = 1
end


a = "testing,  1     2 testing"
b = 'in All worlds, in which all k1ttens reign supreme ^$#$%^!faces'
c = "Joe can't tell, between 'large' and large."
d = "car: carpet as java: javascript!!&@$%^&"
phrase = Phrase.new(c)
p phrase.word_count
