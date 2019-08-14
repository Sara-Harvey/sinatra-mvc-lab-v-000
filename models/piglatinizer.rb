class PigLatinizer
  attr_reader :text 

  def piglatinize(text)
    array = text.split("")
    first_letter = array.first
    first_2 = array.first(2).join 
    first_3 = array.first(3).join

    if first_letter == ("a" || "e" || "i" || "o" || "u")
      puts array.join + "way"

    elsif first_2 == ("ch")
      array.shift(2)
      puts array.join + first_2 + "ay"

    elsif first_3 == ("str")
      array.shift(3)
      puts array.join + first_3 + "ay"

    else
      array.shift
      array.join + first_letter + "ay"
    end
  end
end