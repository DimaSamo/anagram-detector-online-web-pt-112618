# Your code goes here!
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(words)
    truth = false
    words.collect do |element|
      truth = false
      if self.word.length == element.length
        truth = true
        element.split(//).each do |char|
          truth = false unless self.word.include?(char)
        end
      end
          element if truth
    end.compact
  end
end
