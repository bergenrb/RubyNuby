## <CODE>
# En enkel klasse. 
# Klassenavn m� begynne med stor bokstav.
class Person
  # Person.new videresender argumentene til initialize
  def initialize( etternavn, fornavn, alder = 0 )
    # attributter prefikses med @
    @etternavn  = etternavn
    @fornavn    = fornavn
    @alder      = alder
  end
  
  # en vanlig instansmetode
  def to_s
    "#{@fornavn} #{@etternavn} er #{@alder} �r."
  end
end

if __FILE__ == $0 # Kun n�r vi kj�rer denne filen:
  p = Person.new("Nordmann", "Ola", 23) 
  puts p #=> "Ola Nordmann er 23 �r."
end
## </CODE>
