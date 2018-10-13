# Write your code here.
def dictionary
  words = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end

def word_substituter(tweet)
  dictionary.each do |word, subst|
    tweet.sub(word, dictionary)
  end
  tweet
end