## <CODE>
# while - gjenta s� lenge noe er sant
begin
  print "En gutt og ei jente satt i ett tre. \n"
  print "S� falt gutten ned. \n"
  print "  Hvem satt igjen? :> "
  svar = gets.chomp.downcase
end while svar.index("jenta")
## </CODE>
