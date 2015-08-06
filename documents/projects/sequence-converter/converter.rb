# Sequence Converter # by John Pespisa

puts "\nWelcome to Sequence Converter!\n"
puts "\nDNA is comprised of the following nucleic acids: Adenine(A), Thymine(T),"
puts "Guanine(G), and Cytosine(C). Please enter the sequence by typing in or"
puts "copy-pasting the sequnce using only the abbreviated letters representing"
puts "the nucleic acid types (in parenthesis next to their names)."
puts "Any entered character that is not A, G, C, or T will be removed automatically."

def converter()
    puts "\n\nPlease enter your DNA sequence: "
    code = gets.chomp.upcase.tr("TAGC", "AUCG")
      puts "\nHere is your RNA sequence (length: #{code.length} bases):\n\n"
      code.delete!("^AGCU")
      puts code
    if code.length > 2
      puts "\n\n\nHere is your amino acid sequence (length: #{code.length / 3} amino acid(s). #{code.length % 3}"
      puts "remaining mRNA base(s)\n"
      code.gsub!(/(.{3})/, '\1 ').strip! #Splits string into triplets so they can be properly translated into amino acid form.
      code.gsub!("AUG", "M")
      code.gsub!("AUC", "I")
      code.gsub!("AUU", "I")
      code.gsub!("AUA", "I")
      code.gsub!("ACU", "T")
      code.gsub!("ACC", "T")
      code.gsub!("ACA", "T")
      code.gsub!("ACG", "T")
      code.gsub!("AAU", "N")
      code.gsub!("AAC", "N")
      code.gsub!("AAA", "K")
      code.gsub!("AAG", "K")
      code.gsub!("AGU", "S")
      code.gsub!("AGC", "S")
      code.gsub!("AGA", "R")
      code.gsub!("AGG", "R")
      code.gsub!("GUU", "V")
      code.gsub!("GUC", "V")
      code.gsub!("GUA", "V")
      code.gsub!("GUG", "V")
      code.gsub!("GCU", "A")
      code.gsub!("GCC", "A")
      code.gsub!("GCA", "A")
      code.gsub!("GCG", "A")
      code.gsub!("GAU", "D")
      code.gsub!("GAC", "D")
      code.gsub!("GAA", "E")
      code.gsub!("GAG", "E")
      code.gsub!("GGU", "G")
      code.gsub!("GGC", "G")
      code.gsub!("GGA", "G")
      code.gsub!("GGG", "G")
      code.gsub!("UUU", "F")
      code.gsub!("UUC", "F")
      code.gsub!("UUA", "L")
      code.gsub!("UUG", "L")
      code.gsub!("UCU", "S")
      code.gsub!("UCC", "S")
      code.gsub!("UCA", "S")
      code.gsub!("UCG", "S")
      code.gsub!("UAU", "Y")
      code.gsub!("UAC", "Y")
      code.gsub!("UGU", "C")
      code.gsub!("UGC", "C")
      code.gsub!("UGG", "W")
      code.gsub!("CUU", "L")
      code.gsub!("CUC", "L")
      code.gsub!("CUA", "L")
      code.gsub!("CUG", "L")
      code.gsub!("CCU", "P")
      code.gsub!("CCC", "P")
      code.gsub!("CCA", "P")
      code.gsub!("CCG", "P")
      code.gsub!("CAU", "H")
      code.gsub!("CAC", "H")
      code.gsub!("CAA", "Q")
      code.gsub!("CAG", "Q")
      code.gsub!("CGU", "R")
      code.gsub!("CGC", "R")
      code.gsub!("CGA", "R")
      code.gsub!("CGG", "R")
      code.gsub!("UGA", "*")
      code.gsub!("UAA", "*")
      code.gsub!("UAG", "*")
      puts code
    else
      puts "\n\nRNA sequence needs to be at least 3 bases long in order to obtain an amino acid sequence"
    end
end

def continue?()
  loop do
    puts "Would you like to analyze another sequence? (Y/N)"
    answer = gets.chomp.upcase
    if answer != "Y" && answer != "N"
      puts "Not a valid answer, please answer with either Y for yes or N for no"
    elsif answer == "Y"
      puts converter()
    else
      puts "\nThank you for using Sequence Converter!"
      puts "Closing..."
      sleep 4
      break
    end
  end
end

puts converter()
puts continue?()
