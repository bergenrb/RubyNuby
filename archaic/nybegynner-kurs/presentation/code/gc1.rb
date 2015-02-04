## <CODE>
streng = "Hvil i fred."

# Vi gir en block som skal kj�res n�r streng objektet d�r.
ObjectSpace.define_finalizer(streng){|id|
  puts "Objektet med ID=#{id} er n� d�dt. "
  puts "Rest in peace."
}

# Starter s�ppelt�mmeren eksplisitt.
puts "Henter s�ppel!"
GC.start
# Men ingenting skjer, da det enn� er en referanse til strengen.

# Pr�ver en gang til...
streng = nil
puts "Henter mer s�ppel!"
GC.start
# finalizer blocken blir kj�rt.
## </CODE>
