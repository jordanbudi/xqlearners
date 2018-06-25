$collectionOfBanners = {
  :fundamentalLiteracies => ["https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/1-Master_of_fundamental_lit.png", "https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/1-Master_of_fundamental_lit.svg"],
  :foundationalKnowledge => ["https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/2-Holders_of_foundational_kno.png", "https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/2-Holders_of_foundational_kno.svg"],
  :originalThinkers => ["https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/4-Original_thinkers.png", "https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/4-Original_thinkers.svg"],
  :generousCollaborators => ["https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/3-Generous_collab.png", "https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/3-Generous_collab.svg"],
  :learnersForLife => ["https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/5-Learners_for_life.png", "https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/5-Learners_for_life.svg"]
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
    pathMMS = $collectionOfBanners[:fundamentalLiteracies][0]
    path = $collectionOfBanners[:fundamentalLiteracies][1]
  elsif (sum <=14)
    pathMMS = $collectionOfBanners[:foundationalKnowledge][0]
    path = $collectionOfBanners[:foundationalKnowledge][1]
  elsif (sum <=21)
    pathMMS = $collectionOfBanners[:originalThinkers][0]
    path = $collectionOfBanners[:originalThinkers][1]
  elsif (sum <=28)
    pathMMS = $collectionOfBanners[:generousCollaborators][0]
    path = $collectionOfBanners[:generousCollaborators][1]
  else
    pathMMS = $collectionOfBanners[:learnersForLife][0]
    path = $collectionOfBanners[:learnersForLife][1]
  end
  return pathMMS, path
end
