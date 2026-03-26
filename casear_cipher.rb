# frozen_string_literal: true

def shift(arr, shf)
  arr.map { |number| shift_number(number, shf) }
end

def shift_number(number, shf)
  if number >= 65 && number <= 90
    number += shf
    number -= 26 if number > 90
  elsif number >= 97 && number <= 122
    number += shf
    number -= 26 if number > 122
  end
  number
end

def caesar_cipher(string, shift)
  arr = string.split('').map(&:ord)

  shift(arr, shift).map(&:chr).join
end
p caesar_cipher('What a string!', 5)
