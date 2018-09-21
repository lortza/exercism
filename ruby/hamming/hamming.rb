class Hamming

  def self.compute(input1, input2)
    raise ArgumentError if input1.length != input2.length

    strand1 = input1.chars
    strand2 = input2.chars
    matches = 0

    strand1.each_with_index do |_, index|
      matches +=1 if strand1[index] != strand2[index]
    end

    matches
  end
end

