## <CODE>
print "Liker du Ruby? [ja/nei]:"
svar = gets.chomp.downcase 

# if kan ogs� brukes etter uttrykk
puts "Jeg liker ogs� Ruby!" if svar=="ja"

# 'unless' er det motsatte av 'if'
puts "La oss kode litt Ruby." unless svar=="nei"

# men b�r brukes forsiktig
unless svar[0] == ?j
  puts "Mener du at du ikke liker Ruby?"
else
  puts "Doble negasjoner er forvirrende..."
end
## </CODE>
