## <CODE>
class Familie
  # Vi inkluderer funksjonalitet fra modulen kalt Enumerable.
  include Enumerable

  # Enumerable forventer at each metoden yield'er
  # det som skal itereres over.
  def each
    yield "Far"
    yield "Mor"
    yield "S�nn"
    yield "Datter"
  end
end

f = Familie.new

# include? og sort metodene er mikset inn fra Enumerable.
puts f.include?("S�nn") #=> true
puts f.sort.join(", ")  #=> "Datter, Far, Mor, S�nn"
## </CODE>
