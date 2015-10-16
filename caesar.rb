def caesar_cipher(string, shift)
  alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
  string_array = string.downcase.split("") #уменьшаем строки для сравнения с алфавитом
  translated = '' #создаем пустую строку
  string_array.each do |word| #запускам цикл для строки, разбиваем на слова
    word.split('').each do |letter| #теперь строки разбиваем на буквы
      if alphabet.include? letter #если алфавит включает эту букву, то продолжаем
        new_letter_location = alphabet.index(letter) + shift #добавляем новую позицию  для буквы
        if new_letter_location < 26
          translated << alphabet[new_letter_location] #если меньше, то добавляем в переменную translated и обрабатываем дальше
        else
          translated << alphabet[new_letter_location - 26] #
        end
      else
        translated += letter #
      end
    end
  end
  return translated.capitalize 
end
p caesar_cipher("What a string!", 5) == "Bmfy f xywnsl!"