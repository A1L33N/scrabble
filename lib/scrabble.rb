class String
  define_method(:scrabble) do

    key_name = {
      'a'=> 1,
      'e'=> 1,
      'r'=> 1,
      's'=> 1,
      't'=> 1,
      'u'=> 1,
      'i'=> 1,
      'l'=> 1,
      'n'=> 1,
      'o'=> 1,
      'd'=> 2,
      'g'=> 2,
      'b'=> 3,
      'c'=> 3,
      'f'=> 4,
      'h'=> 4,
      'j'=> 8,
      'k'=> 5,
      'm'=> 3,
      'p'=> 3,
      'q'=> 10,
      'v'=> 4,
      'w'=> 4,
      'x'=> 8,
      'y'=> 4,
      'z'=> 10
      }
    word_array = self.downcase().split("")
    score_array = []
    word_array.each() do |letter|
      score_array.push(key_name.fetch(letter))
    end
      score_array
      total = 0
      score_array.each() do |number|
        total = total.+(number)
      end
      total
  end
end
