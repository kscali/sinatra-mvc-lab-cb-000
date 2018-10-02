Skip to content
 
Search or jump to…

Pull requests
Issues
Marketplace
Explore
 @kscali Sign out
19
0 87 learn-co-students/sinatra-mvc-lab-cb-000
 Code  Issues 0  Pull requests 82  Projects 0  Insights
sinatra-mvc-lab-cb-000/models/piglatinizer.rb
78049be  on Mar 13
@DanielSeehausen DanielSeehausen fixed solution to match new improved testing (single method expected …
@dfenjves @vicfriedman @howardbdev @DanielSeehausen
     
40 lines (30 sloc)  907 Bytes
class PigLatinizer

  def piglatinize(input_str)
    x = (input_str.split(" ").length == 1) ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
    puts x
    x
  end

  private

  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(word)
    # word starts with vowel
    if !consonant?(word[0])
      word = word + "w"
    # word starts with 3 consonants
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    # word starts with 2 consonants
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    # word starts with 1 consonant
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end

  def piglatinize_sentence(sentence)
    sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
  end




end
© 2018 GitHub, Inc.
Terms
Privacy
Security
Status
Help
Contact GitHub
Pricing
API
Training
Blog
About
Press h to open a hovercard with more details.