$collectionOfBanners = {
  :fundamentalLiteracies => ["https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/1-Master_of_fundamental_lit.jpg", "https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/1-Master_of_fundamental_lit.svg", "https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/1-Master_of_fundamental_lit.png"],
  :foundationalKnowledge => ["https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/2-Holders_of_foundational_kno.jpg", "https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/2-Holders_of_foundational_kno.svg", "https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/2-Holders_of_foundational_kno.png"],
  :originalThinkers => ["https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/4-Original_thinkers.jpg", "https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/4-Original_thinkers.svg", "https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/4-Original_thinkers.png"],
  :generousCollaborators => ["https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/3-Generous_collab.jpg", "https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/3-Generous_collab.svg", "https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/3-Generous_collab.png"],
  :learnersForLife => ["https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/5-Learners_for_life.jpg", "https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/5-Learners_for_life.svg", "https://xqlearnergoals.herokuapp.com/images/learner-goals-posters/5-Learners_for_life.png"]
}

def collectAnswers(*answers)
  calculateSum(answers)
end

def calculateSum(arrayOfAnswers)
  sum = arrayOfAnswers.map(&:to_i).inject(0,:+)
  decideLearnerGoal(sum)
end

def decideLearnerGoal(sum)
  if (sum <= 10)
    pathMMS = $collectionOfBanners[:fundamentalLiteracies][0]
    path = $collectionOfBanners[:fundamentalLiteracies][1]
    pathPNG = $collectionOfBanners[:fundamentalLiteracies][2]
  elsif (sum <=17)
    pathMMS = $collectionOfBanners[:foundationalKnowledge][0]
    path = $collectionOfBanners[:foundationalKnowledge][1]
    pathPNG = $collectionOfBanners[:foundationalKnowledge][2]
  elsif (sum <=24)
    pathMMS = $collectionOfBanners[:originalThinkers][0]
    path = $collectionOfBanners[:originalThinkers][1]
    pathPNG = $collectionOfBanners[:originalThinkers][2]
  elsif (sum <=31)
    pathMMS = $collectionOfBanners[:generousCollaborators][0]
    path = $collectionOfBanners[:generousCollaborators][1]
    pathPNG = $collectionOfBanners[:generousCollaborators][2]
  else
    pathMMS = $collectionOfBanners[:learnersForLife][0]
    path = $collectionOfBanners[:learnersForLife][1]
    pathPNG = $collectionOfBanners[:learnersForLife][2]
  end
  return pathMMS, path, pathPNG
end
