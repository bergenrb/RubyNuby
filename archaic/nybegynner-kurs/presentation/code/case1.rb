## <CODE>
print "Er du gutt eller jente?: "
svar = gets.downcase.chomp

# case er ogs� kjent som switch/case i andre spr�k
case svar
when "intetkj�nn" 
  puts "Hei!"
when "jente", "kvinne", "dame"
  puts "Heisann s�ta!"
when "gutt", "mann", "herre"
  puts "Heisann kjekken!"
else 
  puts "God dag herr/fru?"
end
## </CODE>
