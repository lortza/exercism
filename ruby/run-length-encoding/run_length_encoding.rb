class RunLengthEncoding
  #AABBBCCCC
  def self.encode(input)
    return '' if input == ''
    output = ''
    # look at each character greater than i0
    # if the char == the char before it
    # add one to the counter
    # if the char !== the one before it
    # add the counter to the output string
    # add the previous letter to the output string
    # set the output back to 1


    counter = 1
    input = input.chars
    input.each_with_index do |letter, i|
      if i > 0
        if letter == input[i - 1]
          counter += 1
          if i == input.length - 1
            output += counter.to_s if counter > 1
            output += input[i - 1]
          end

        else
          output += counter.to_s if counter > 1
          output += input[i - 1]
          counter = 1
        end
      end
    end
    output
  end

  def self.decode(input)
    return '' if input == ''
    input = input.chars
    output = ''
    input.each_with_index do |letter, i|
      return letter if input.length == 1
      num_holder = ''

      if letter.to_i == 0
        output += letter
      else # it's a number
        num_holder += letter
        p num_holder
      end

    end
    if num_holder != ''
      num = num_holder.to_i
      output += (input[i + 1]) * num
      num_holder = ''
    end
    output
  end
end


module BookKeeping
  VERSION = 3
end
