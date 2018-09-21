class Cipher

  ALPHABET = ('a'..'z').to_a

  def original_encode(message, offset)
    output = []
    message.chars.each do |letter|
      new_index = ALPHABET.index(letter) + offset
      output << ALPHABET[new_index]
    end
    output.join()
  end

  def processor(message, offset, adjusted_index_proc)
    output = []
    message.chars.each do |letter|
      new_index = adjusted_index_proc.call(letter)
      output << ALPHABET[new_index]
    end
    output.join()
  end

  def encode(message, offset)
    proc = Proc.new { |letter| ALPHABET.index(letter) + offset }
    processor(message, offset, proc)
  end

  def decode(message, offset)
    proc = Proc.new { |letter| ALPHABET.index(letter) - offset }
    processor(message, offset, proc)
  end

end

cipher = Cipher.new

p cipher.original_encode('ilikekitties', 3)
p cipher.encode('ilikekitties', 3)

p cipher.decode('lolnhnlwwlhv', 3)