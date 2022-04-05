# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.
# What if third word is < 2 chars???

def to_weird_case(str)
  result = []
  words = str.split(' ')
  words.each_with_index do |word, index|
    if index % 3 == 2
      new_word = word.chars
      new_word.each_with_index do |_, i|
        if i > 0 && i % 2 == 1
          new_word[i].upcase!
        end
      end
      result << new_word.join
    else
      result << word
    end
  end
  result.join(' ')
end

# Examples:

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') == 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case( 'It is a long established fact that a reader will be distracted') == 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case( 'Miss Mary Poppins word is supercalifragilisticexpialidocious') == 'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# The tests above should print "true".
