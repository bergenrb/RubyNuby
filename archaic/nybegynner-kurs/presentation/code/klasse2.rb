## <CODE>
# Vi vil bruke Person-klassen videre
require 'klasse1.rb' 

# Klasser er "�pne" skop, og kan enkelt utvides.
class Person  
  # Ruby tillater deg ikke � f� tak i attributtene
  # fra utsiden av objektet. Du m� g� via metodekall.

  #  get-metode
  def alder
    @alder
  end
  # set-metode
  def alder=( ny_alder )
    @alder = ny_alder
  end

  # tungvint? Jepp, s� Ruby har en snarvei:
  attr_accessor :alder     # definerer metodene over automatisk

  # Vi vil ogs� gjerne kunne lese navnene til personen
  attr_reader   :etternavn, :fornavn

end

if __FILE__ == $0 # Kun n�r vi kj�rer denne filen:
  p = Person.new( "Nordmann", "Baby" )
  p.alder = 3     # Vi setter alderen
  puts p.alder    #=> 3
  p.alder += 1    # �k alderen med et �r
  puts p.alder    #=> 4
  puts p.fornavn  #=> "Baby"
end
## </CODE>
