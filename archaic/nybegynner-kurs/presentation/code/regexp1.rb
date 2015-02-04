## <CODE>
# Litt HTML tekst � lete i
html = '<UL>
<LI><IMG SRC="next.gif"></LI>
<LI><A HREF="index.html">Hei</A></LI>
</UL>'

# Den ryddige m�ten � lage Regexp'er p�:
r1 = Regexp.new( '<IMG SRC=".*">' )
puts r1.match( html ).to_s #=> '<IMG SRC="next.gif">'

# Regexp-literaler
r2 = /<A HREF=".*">.*<\/A>/ # slash m� escapes
puts r2.match( html ).to_s #=> '<A HREF="index.html">Hei</A>'

# String-klassen har ogs� en del metoder som tar imot
# ett Regexp-objekt, deriblant sub og gsub
antall_e = 0
"Hvor mange e'er er det i denne setningen?".scan(/e/){ |match|
  antall_e += 1
}
puts "Totalt #{antall_e} e'er." #=> Totalt 9 e'er.
## </CODE>
