class PigLatinizer 
  attr_accessor :words
  
  def initialize
    @words = words
  end   
  
  def piglatin(words)
    new_word = word.slice[1..-1]
    new_word + words[0] + "ay"
  end   
  
  def piglatin_phrase(phrase)
    new_phrase = phrase.split(" ")
    new_phrase.each do |word|
      word.piglatin
    end   
  end   
end   