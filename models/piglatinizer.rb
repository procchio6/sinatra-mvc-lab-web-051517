class PigLatinizer
  VOWELS = ['a', 'e', 'i', 'o', 'u']

  def to_pig_latin(phrase)
    phrase.split(' ').map do |word|
      piglatinize(word)
    end.join(' ')
  end

  def piglatinize(word)
    result = ""
    if VOWELS.include?(word[0].downcase)
      result = word + "way"
    else
      word.split('').each_with_index do |chr, idx|
        if VOWELS.include?(chr)
          result = word[idx..word.length] + word[0..idx-1] + "ay"
          break
        end
      end
    end
    result
  end

end
