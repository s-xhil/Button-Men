#1. Simulates the outcome of rolling our two ten sideddice and our opponents single ten sided die.
ourDice <- sample(1:10, size = 2, replace = TRUE)
theirDice <- sample(1:10, size = 1, replace = TRUE)

#2. Using the values rolled, this tests if we can perform a power attack and prints out a statement of the outcome.

for ( die in ourDice) {
  if (die >= theirDice) {
    print(paste("Power Attack:", die, theirDice))
  }
}

#3. Using the values rolled, test if we can perform a skill attack and print out a statement of the outcome.

if (sum(ourDice) == theirDice) {
  print(paste("Skill Attack: [", paste(ourDice, collapse = ","),"]", theirDice))
}
