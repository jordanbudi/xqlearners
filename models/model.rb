def prep_ingredients(name, description, feature, rating)
  #the following if statement will process the first question: describe in one emoji
  if (description.to_i == 1) #heart-eyes
    description = ["you were love at first sight", "I'm like a deer caught in the headlights of your beauty", "your eyes light up my day"].sample
  elsif (description.to_i == 2) #winky face with tongue
    description = ["you drive me crazy"].sample
  elsif (description.to_i == 3) #fire
    description = ["you are fire", "you are lit", "you are dynamite"].sample
  elsif (description.to_i == 4) #heart
    description = ["you make my heart skip a beat evertyime I see you", "when I see you my heart it's like my heart plays hopscotch inside of my chest"].sample
  else #if they don't choose anything
    description = ["you are so unique there is no emoji to describe you"].sample
  end
  
  #the following if statement will process the second question: best feature
  if(feature.to_i == 1)
    feature = ["I love your smile"].sample
  elsif(feature.to_i == 2)
    feature = ["I love your lips", "When our lips touch, I can taste the next 60 years of my life", "When our lips touch, I can taste forever"].sample
  elsif(feature.to_i == 3)
    feature = ["I love your eyes"].sample
  elsif(feature.to_i == 4)
    feature = ["I love your weave", "I love your hair"].sample
  elsif(feature.to_i == 5)
    feature = ["I love how smart you are"].sample
  elsif(feature.to_i == 6)
    feature = ["I love your muscles"].sample
  elsif(feature.to_i == 7) #money emoji
    feature = ["I love how you take care of me"].sample
  else
    feature = ["I love everything"].sample
  end
    
  #the following if statement will process the third question: rating
  if(rating.to_i == 1)
    rating = ["You make a really good friend."].sample
  elsif(rating.to_i == 2)
    rating = ["Text me."].sample
  elsif(rating.to_i == 3)
    rating = ["Let's grab lunch."].sample
  elsif(rating.to_i == 4)
    rating = ["Let's go on a date?"].sample
  elsif(rating.to_i == 5)
    rating = ["I worship the ground you walk on."].sample
  else
    rating = ["My love for you can't be quantified in numbers."].sample
  end
  
  sauce_it(name, description, feature, rating)
end

def sauce_it(name, description, feature, rating)
  return "Hey #{name}, #{description}. #{feature}. #{rating}"
end