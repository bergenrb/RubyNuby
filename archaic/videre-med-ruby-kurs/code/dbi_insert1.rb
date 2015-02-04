#!/usr/bin/ruby


require 'dbi' 
# ... samme login-verdiene som i forrige ...

databasenavn = 'kentda_rubynuby_webapp'
brukernavn   = 'kentda_admin'
passord      = 'etKryptiskPassord'
server       = 'en.mysql.server.et.sted.invalid'


DBI.connect("DBI:Mysql:database=#{databasenavn};host=#{server}", 
            brukernavn, passord) do |dbh|
  # Fortsetter der vi slapp, men med skrivetilgang.

## <CODE>
  # 'do' kj�rer SQL-uttrykk og returnerer antall rader p�virket.  
  n = dbh.do("INSERT INTO person VALUES (NULL, 'rubynuby1', " + 
             " 'Nuby', 'Ruby', 'r0bY', 'nuby1@ruby.no')")
  puts "Antall rader p�virket av 'do': #{n}"
  
  # 'execute' kan brukes omtrent som 'do', men gir et
  # DBI::StatementHandle tilbake.
  sth = dbh.execute('INSERT INTO person VALUES (NULL, ?, ?, ?, ?, ?)',
                    'rubynuby2', 'Nuby', 'Ruby', 
                    'r0bY', 'nuby2@ruby.no')
  puts "Antall rader p�virket av 'execute': #{sth.rows}"
  sth.finish # Ikke bruker block? Husk � lukke ressurser.

  # 'execute' kan ogs� gi oss et "halvferdig" statement.
  dbh.prepare('INSERT INTO person VALUES (NULL, ?, ?, ?, ?, ?)') do |sth|
    # Kjekt n�r ting skal gjentas endel...
    sth.execute( 'rubynuby3', 'Nuby', 'Ruby', 'r0bY', 'nuby3@ruby.no')
    sth.execute( 'rubynuby4', 'Nuby', 'Ruby', 'r0bY', 'nuby4@ruby.no')
    sth.execute( 'rubynuby5', 'Nuby', 'Ruby', 'r0bY', 'nuby5@ruby.no')
  end # M�kk lei sth.finish n�!
## </CODE>
end

