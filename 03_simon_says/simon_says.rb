#write your code here
def echo (greeting)
  greeting
end

def shout (greeting)
  greeting.upcase
end

def repeat(greeting, num=2)
  greeting + ((" " + greeting) * (num - 1))
end

def start_of_word(word, num)
  word.split
  word[0..num-1]
end

def first_word(phrase)
  word = phrase.split(" ")
  word[0]
end

def titleize(word)
  little_words = ["the", "and", "in", "on", "with", "over"]

  if word.include? " "
    array = word.split(" ")
    array.each {|i| i.capitalize! unless little_words.include? i}
    array[0].capitalize!
    array.join(" ")
  else 
    word.capitalize!
  end
end