## <CODE>
require 'thread'
$delt_teller = 0
$mutex = Mutex.new

# Lag ti tr�der som �ker den delte telleren 
# gradvis tjuefem ganger.
traader = (1..10).collect do 
  Thread.new do
    25.times do |i|
      $mutex.synchronize do                  ### Synkronisert
        gammel_verdi = $delt_teller            # kodebit.
        ny_verdi = gammel_verdi + 1            #
        sleep 0 # Framtvinge tr�dproblematikk  #
        $delt_teller = ny_verdi                #
      end                                    ###
    end
  end 
end

# Vent p� alle tr�dene f�r vi skriver ut den endelige verdien.
traader.each{|t| t.join}
puts $delt_teller # Skal skrive ut "250"
##</CODE>
