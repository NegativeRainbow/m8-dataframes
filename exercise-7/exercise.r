# Exercise 7: Husky Football 2015 Season
# Read in the Husky Football 2015 game data into a variable called `husky.games.2015`
husky.games.2015 <- read.csv('data/huskies_2015.csv')

# Create a vector of the teams that the Huskies played against during that season
# Call this vector `not.huskies`. You'll need to convert this column to a vector
not.huskies <- husky.games.2015$opponent
# Create a vector of the their final scores for the games
# Call this variable `husky.scores`
husky.scores <- husky.games.2015$uw_score
# Create 2 variables called `rushing.yards` and `passing.yards` to represent the yards the Huskies rushed and passed
rushing.yards <- husky.games.2015$rushing_yards
passing.yards <- husky.games.2015$passing_yards
# Create a variabled called `combined.yards` that is the total yardage of the Huskies for each game
combined.yards <- rushing.yards + passing.yards
# What is the score of the game where the Huskies had the most combined yards?
score.with.most.yards <- husky.scores[combined.yards == max(combined.yards)]
# Write a function `MostYardsScore` that takes in a dataframe parameter `games` and returns a descriptive sentence
# about the game that was played that had the most yards scored in it.
# Take note of the steps from above including the opposing team, score, and date the game was played
MostYardsScore <- function(games) {
  games$combined_yards <- games$rushing_yards + games$passing_yards
  most.yards <- max(games$combined_yards)
  most.yards.game <- games['combined_yards' == most.yards,]
  if(most.yards.game$uw_win == 1){
    did.win <- 'won'
  } else {
    did.win <- 'lost'
  }
  return(paste('On', most.yards.game$date, "the Huskies", did.win, "a game against", most.yards.game$opponent, "with a score of", most.yards.game$uw_score, "to", most.yards.game$opponent_score, "the team had a total of", most.yards.game$combined_yards, "yards,", most.yards.game$rushing_yards, "yards were rushing yards, and", most.yards.game$passing_yards, "were passing yards, there were also a total of", most.yards.game$fumbles, "fumbles."))
}
# What was the highest yardage game so far this season?
# Hint: Read in the dataset titled `huskies_2016.csv` and save it as a variable
husky.games.2016 <- read.csv('data/huskies_2016.csv')
sentence <- MostYardsScore(husky.games.2016)