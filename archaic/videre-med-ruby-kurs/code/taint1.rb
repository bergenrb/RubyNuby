#!/usr/local/bin/ruby 

## <CODE>
print 'Skriv noe inn og trykk Return: '

# Brukerdata er svart som kull...
skitten = gets 
puts 'Skitten brukerdata.' if skitten.tainted? 

pur = 'Literal data, hvit som sne.'
puts pur if not pur.tainted?

# Tainting sverter av p� andre objekter som lages med
# utgangspunkt i besudlede data.
puts 'Sverter av!' if (pur+skitten).tainted?

# Vi kan gj�re ting eksplisitt tainted...
pur.taint
# ..og renvaske skitten data (dersom vi f�r lov).
pur.untaint            
## </CODE>
