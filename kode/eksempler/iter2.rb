personer = [ "Ola", "Per", "Jan", "Line"]

# Den "gamle" naive m�ten
for i in (0...personer.size) 
  puts "Hei " + personer[i]
end

# Alle objekter som implementerer 'each' kan itereres over
for person in personer
  puts "Er #{person} tilstede?"
end

# Ruby-m�ten: Bruke Iterator og en block
personer.each do |person|
  puts "Velkommen #{person}"
end  
