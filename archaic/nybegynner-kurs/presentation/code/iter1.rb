## <CODE>
# La oss skrive ut 3-gange-tabellen
tall = 3

# Ruby har for-l�kker som de fleste spr�k
for i in (1..10)
  puts "#{i} gange #{tall} er #{i*tall}"
end

# 5-gange-tabellen
tall = 5

# men for-l�kkens dager er talte. 
# for-l�kken over er syntaktisk sukker for
# f�lgende bruk av iterator-metoden each.
(1..10).each do |i|
  puts "#{i} gange #{tall} er #{i*tall}"
end  
## </CODE>
