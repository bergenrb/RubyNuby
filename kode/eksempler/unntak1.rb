$livvakter = true

def hent_kongen
  if $livvakter
    puts "Kanskje kommer Kongen..."
  else
    raise SecurityError, "Redd for blÝtekake."
  end
end

begin
  hent_kongen #=> "Kanskje kommer Kongen..."
  $livvakter = false
  hent_kongen #=> "Niks: Redd for blÝtekake."
rescue SecurityError => error
  puts "Niks: #{error}"
end
