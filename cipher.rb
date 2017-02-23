#"a".ord returns 97
MIN_LETTER_VALUE = 97
#"z".ord returns 122
MAX_LETTER_VALUE = 122

SPACE_CHAR = " "

def caesar_cipher(input, shift_amount)

  result = []
  input.scan(/./) {|letter|
    if(letter == SPACE_CHAR)
      result.push( SPACE_CHAR )
      next
    end
    letter_value = letter.ord + shift_amount
    if(letter_value > MAX_LETTER_VALUE)
      amount_over = letter_value - MAX_LETTER_VALUE
      result.push( ((MIN_LETTER_VALUE - 1) + amount_over).chr )
    else
      result.push( letter_value.chr )
    end
  }

  return result.join

end

puts caesar_cipher("hello mate", 5)
puts caesar_cipher("abc", 3)
puts caesar_cipher("def", 26)
