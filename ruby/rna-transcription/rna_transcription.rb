# class Complement

#   def self.of_dna(dna_input)
#     pairs = [
#       {dna: 'G', rna: 'C'},
#       {dna: 'C', rna: 'G'},
#       {dna: 'T', rna: 'A'},
#       {dna: 'A', rna: 'U'}
#     ]
#     dna_ntides = pairs.map {|pair| pair[:dna]}

#     output = dna_input.chars.map do |ntide|
#       if dna_ntides.include?(ntide)
#         pairs.select {|pair| pair[:dna] == ntide }[0][:rna]
#       else
#         return ''
#       end
#     end.join('')
#   end

# end


module BookKeeping
  VERSION = 4
end

# other solution
class Complement
  def self.of_dna(dna)
    dna.chars.map do |l|
      case l
      when 'G' then 'C'
      when 'C' then 'G'
      when 'T' then 'A'
      when 'A' then 'U'
      else return ''
      end
    end.join
  end
end