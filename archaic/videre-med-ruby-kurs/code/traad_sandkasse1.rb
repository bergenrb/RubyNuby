## <CODE>
# Pakker sandkasselekingen i en metode slik at det 
# ikke vil v�re (mange) variabler tilgjengelig i konteksten.
def sandkasse_lek( kode )
  sandkasse = Thread.new do
    # "evil" eval kan v�re skummel, s� la oss v�re paranoide.
    $SAFE = 4   # Niv� 1-3 lar oss ikke bruke eval p�  
    eval kode   # besudlet data, men det gj�r niv� 4!
  end
  print 'Koden din returnerte: ', sandkasse.value.inspect, "\n"
end

begin
  print 'Skriv inn vilk�rlig Ruby-kode: '
  kildekode = gets.chomp              # Brukerdata er tainted.
  sandkasse_lek( kildekode )
end while kildekode.size.nonzero?
## </CODE>
