# Write your code here.
def dictionary
  words = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end

def word_substituter(tweet)
  tweet.split.collect do |word|
    if dictionary.keys.include? word.downcase
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  shortened_tweet = tweet
  if shortened_tweet.length > 140
    shortened_tweet = word_substituter(tweet)
  end
  shortened_tweet
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = word_substituter(tweet)
  if shortened_tweet.length > 140
    shortened_tweet = shortened_tweet[1..140]
  else
    shortened_tweet
  end
end