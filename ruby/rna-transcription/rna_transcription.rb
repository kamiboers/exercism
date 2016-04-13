require 'pry'

class Complement
  VERSION = 3

def self.of_dna(dna_strand)
  throw ArgumentError if !dna_strand.delete("ATCG").empty?
  rna_strand = dna_strand.chars.map do |char|
    new_char = "A" if char == "T"
    new_char = "U" if char == "A"
    new_char = "C" if char == "G"
    new_char = "G" if char == "C"
    new_char
  end.join
end

end

if __FILE__ == $0
rna = Complement.new
binding.pry
end
