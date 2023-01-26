MORSE_CODE = { 'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.',
               'G' => '--.', 'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
               'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.', 'Q' => '--.-', 'R' => '.-.',
               'S' => '...', 'T' => '-', 'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',
               'Y' => '-.--', 'Z' => '--..', '0' => '-----', '1' => '.----', '2' => '..---',
               '3' => '...--', '4' => '....-', '5' => '.....', '6' => '-....', '7' => '--...',
               '8' => '---..', '9' => '----.' }.freeze

def decode_char(char)
  MORSE_CODE.key(char)
end

def decode_word(word)
  result = ''
  characters = word.split
  characters.each { |char| result += char.split.map { |code| decode_char(code) }.join }
  result
end

def decode(message)
  result = ''
  words = message.split('  ')
  words.each { |text| result += "#{text.split.map { |code| decode_word(code) }.join} " }
  result
end

puts decode_char('.-')
puts decode_word("-- -.--")
puts decode('-- -.--   -. .- -- .')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
