## <CODE>
pi_traad = Thread.new do
  # Regn ut PI til �rten desimaler ...
  puts 'Regne, regne, regne!'
  sleep 5   # Vanlig student-innsats fra denne tr�den...
  Math::PI  # ... og tror du ikke den koker ogs�!
end
puts 'Tr�den g�r i bakgrunnen.'
print 'PI er ', pi_traad.value  # Vent p� returverdien fra tr�den.
## </CODE>
