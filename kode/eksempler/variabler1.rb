x = 'Norge'  # Se, jeg er en tekst-streng (String).
x = [1,2,3]  # �h, jeg mener en Array.
x = 5        # Ups, n� er jeg en Fixnum.

# Tilordninger kan lenkes
a = b = c = d = 5

# Du trenger ikke ekstra variable for � bytte to verdier
x = 5
y = 3
x, y = y, x  # N� er x = 3 og y = 5

# Denne er kjekk � ha n�r en metode vil returnere flere verdier
a,b,c = ['a','b','c']

# Ruby bruker prefiks for � angi variabel skop
$global_variabel   = 'alle kan se meg!'
lokal_variabel     = 's�nn som x, y, a, b, c etc.'
@instans_attributt = 'jeg tilh�rer det gjeldende objekt.'
@@klasse_attributt = 'jeg er felles for mange objekter.'
KONSTANT_VARIABEL  = 'en selvmotsigelse?'
