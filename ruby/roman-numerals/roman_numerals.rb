class Fixnum

  def to_roman
    bases = {
      1000 => 'M',
      900 => 'CM',
      500 => 'D',
      400 => 'CD',
      100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I'
    }

    if bases[self]
      bases[self]
    else
      output = ''
      starting_value = self
      while starting_value > 0
        bases.each do |int, rom|
          if int <= starting_value
            output << rom
            starting_value -= int
            break
          end
        end
      end#while
      output
    end#if

  end#to_roman
end

module BookKeeping
  VERSION = 2
end
