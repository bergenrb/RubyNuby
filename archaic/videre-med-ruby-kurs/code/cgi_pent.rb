#!/usr/local/bin/ruby 

## <CODE>
#!/usr/bin/ruby
require 'cgi'

# CGI-biblioteket kan ogs� hjelpe deg med � f� skrevet HTML-koden.
cgi = CGI.new('html4')
cgi.out {
  cgi.html {
    cgi.head { 
      cgi.title { 'Penere kildekode?' } 
    } + 
    cgi.body {
      cgi.h1 { 'Gj�r dette kildekoden penere?' } + 
      cgi.p +
      'Eller f�r man kr�llparentes-overdose?'
    }
  }
}
## </CODE>
