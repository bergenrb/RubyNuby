## <CODE>
# Sp�r f�rst om alderen.
print "Hvor gammel er du?: "
alder = gets.to_i

if alder < 1 then puts "N� tuller du vel?"; exit end

if alder >= 18
  puts "Du er myndig."
elsif alder >= 16
  puts "Du er lovlig."
else
  puts "Sm�en!"
end

# 'if' kan ogs� returnere en verdi, s� du slipper
# � bruke '?:' operatoren hvis du ikke liker den.
drikkevare = 
  if alder >= 60
    "Sviskejuice"
  else
    if alder >= 20
      "Sprit"
    elsif alder >= 18
      "�l og vin"
    else
      "Brus"
    end	       
  end
puts "Kj�p deg litt #{drikkevare}"
## </CODE>
