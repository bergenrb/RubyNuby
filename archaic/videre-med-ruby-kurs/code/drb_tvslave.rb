## <CODE>
require 'drb_videospiller' # Trenger definisjonen til Kontroller
$hvor = 'p� soverommet'
DRb.start_service
vcr_tjener = DRbObject.new( nil, 'druby://localhost:4242' )

tjener_utput = vcr_tjener.hent_standard_utput 
puts_begge_steder = proc do |tekst|
  puts tekst
  tjener_utput.puts tekst
end

puts_begge_steder.call('--Fjernkontrollen kan vi ta med inn p� soverommet')
fjernkontroll = vcr_tjener.ny_fjernkontroll
p fjernkontroll
fjernkontroll.hvor_er_du? #=> Kontroll: 'Jeg er p� soverommet.'
fjernkontroll.start       #=> Videospiller: 'Press play on tape i stua.'

puts_begge_steder.call('--Mens kontrollen som er tett knyttet til ' +
                       "videospilleren\n--m� forbli i stua.")
# S� vi f�r bare en referanse til, og ikke en kopi av, kontrollen.
kontroll = vcr_tjener.ny_kontroll
p kontroll
kontroll.hvor_er_du?  #=> Kontroll: 'Jeg er i stua.'
kontroll.start        #=> Videospiller: 'Press play on tape i stua.'
## </CODE>

