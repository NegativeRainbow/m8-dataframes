# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks have scored in each game this season (google "Seahawks")
sea.points <- c(12, 3, 37, 27)

# Create a vector of the number of points the Seahwaks have allowed to be scored against them in each game this season
opponent.points <- c(10, 9, 18, 17)

# Combine your two vectors into a dataframe
seahawks <- data.frame(points.won=sea.points, points.lost=opponent.points)

# Create a new column "diff" that is the difference in points
seahawks$diff <- seahawks$points.won - seahawks$points.lost

# Create a new column "won" which is TRUE if the Seahawks wom
seahawks$won <- seahawks$diff > 0

# Create a vector of the opponents
opponents <- c("Dolphins", "Rams", "49ers", "Jets")

# Assign your dataframe rownames of their opponents
row.names(seahawks) <- opponents