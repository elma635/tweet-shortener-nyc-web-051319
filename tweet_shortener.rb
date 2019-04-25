# Write your code here.
require 'pry'

def dictionary
  convert = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
    }
end

def word_substituter(tweet)
  tweet.split.collect do |full_word|
      if dictionary[full_word] #checking to see if full_word is inside hash
         dictionary[full_word] #if it is, it will return it's value (strings will alwys be truthy values) #bc its not in the hash, no key for value and will be falsey which doesnt exist so it will move on the else 
      else
        full_word #returns same word if its not inside hash.
       end
     end.join(" ")
  end





def bulk_tweet_shortener(tweet_array)
  tweet_array.collect do |tweet|
puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(tweet)
    if tweet.chars.length > 140
      word_substituter(tweet)
    else
      tweet
    end
  end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).chars.length > 140
    truncate = word_substituter(tweet).chars[0..138] << ("...").join(" ")
  else
    word_substituter(tweet)
  end
end
