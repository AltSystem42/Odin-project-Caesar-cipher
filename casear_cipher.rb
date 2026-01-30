def shifter(arr, shift)
  arr.map { |number| 
  if number >= 65 && number <= 90
    number += shift
    if number > 90
      number -= 26
    end
  elsif number >= 97 && number <= 122
    number += shift
      if number > 122
        number -= 26
      end
  end
number }
end

def caesar_cipher(string, shift)
  arr = string.split("").map {|letter| letter.ord}

  arr = shifter(arr, shift).map{|letter| letter.chr}.join
end
p caesar_cipher("What a string!", 5)



