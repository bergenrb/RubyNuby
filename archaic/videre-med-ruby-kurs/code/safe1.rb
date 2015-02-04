#!/usr/local/bin/ruby 

## <CODE>
puts "N�v�rende $SAFE-niv�: #{$SAFE}." 

filnavn = "/etc/hosts"

# Eksempel p� potensielt farlig operasjon.
print File.open(filnavn).read.size, " bytes lest.\n"

# La oss simulere en ekstern kilde og �ke paranoiaen litt.
filnavn.taint
$SAFE = 1

begin
  print File.open(filnavn).read.size, " bytes lest.\n"
rescue SecurityError => sec_err
  puts sec_err #=> "Insecure operation - open"
end
## </CODE>
