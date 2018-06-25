locationOfImagesFolder = "../images/"

$collectionOfBanners = {
  :fundamentalLiteracies => ["../images/learner-goals-banners/fundamental-literacies.png", "../images/learner-goals-posters/1-Master_of_fundamental_lit.svg"],
  :foundationalKnowledge => ["../images/learner-goals-banners/foundational-knowledge.png", "../images/learner-goals-posters/2-Holders_of_foundational_kno.svg"],
  :originalThinkers => ["../images/learner-goals-banners/original-thinkers.png", "../images/learner-goals-posters/3-Generous_collab.svg"],
  :generousCollaborators => ["../images/learner-goals-banners/generous-collaborators.png", "../images/learner-goals-posters/4-Original_thinkers.svg"],
  :learnersForLife => ["../images/learner-goals-banners/learners-for-life.png", "../images/learner-goals-posters/5-Learners_for_life.svg"]
}

def collectAnswers(*answers)
  calculateSum(answers)
end

def calculateSum(arrayOfAnswers)
  sum = arrayOfAnswers.map(&:to_i).inject(0,:+)
  decideLearnerGoal(sum)
end

def decideLearnerGoal(sum)
  if (sum <= 7)
    path = $collectionOfBanners[:fundamentalLiteracies][1]
  elsif (sum <=14)
    path = $collectionOfBanners[:foundationalKnowledge][1]
  elsif (sum <=21)
    path = $collectionOfBanners[:originalThinkers][1]
  elsif (sum <=28)
    path = $collectionOfBanners[:generousCollaborators][1]
  else
    path = $collectionOfBanners[:learnersForLife][1]
  end
  return path
end
