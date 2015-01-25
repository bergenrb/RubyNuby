# * prefikset brukes for � pakke argumentlista inn i en Array
def list_opp( og_frase, *args )
  puts args[0..-2].join(", ").capitalize +
    og_frase + args[-1] + '.'
end

list_opp( " og ", "epler", "p�rer", "bananer" )
  #=> "Epler, p�rer og bananer."

# eller pakke opp en Array for � bruke elementene som argumenter
a =  [ " and ", "apples", "pears", "bananas" ]
list_opp( *a ) #=> "Apples, pears and bananas."
