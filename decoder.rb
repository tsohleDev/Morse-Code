$morse_alphabets = 
{ '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', 
'.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8', '----.' => '9', '-----' => '0'}

def decode_alphabet(morse_alphabet)
  return $morse_alphabets[morse_alphabet]
end

def decode_word(morse_word)
    morse_word.split(' ').map { |morse_alphabet| decode_alphabet(morse_alphabet) }.join
end

def decode_sentence(morse_sentence)
    morse_sentence.split('  ').map { |morse_word| decode_word(morse_word) }.join(' ')
end