#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE teams, games")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do 
  if [[ $WINNER != winner ]]
  then
    if [[ $($PSQL "INSERT INTO teams(name) VALUES ('$WINNER')") == "INSERT 0 1" ]]
      then 
        $($PSQL "INSERT INTO teams(name) VALUES ('$WINNER')")
    fi
    if [[ $($PSQL "INSERT INTO teams(name) VALUES ('$OPPONENT')") == "INSERT 0 1" ]]
      then 
        $($PSQL "INSERT INTO teams(name) VALUES ('$OPPONENT')")
    fi
    OPPONENT_ID=$($PSQL "SELECT team_ID FROM teams WHERE name='$OPPONENT'")
    WINNER_ID=$($PSQL "SELECT team_ID FROM teams WHERE name='$WINNER'")
    INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year, round, winner_goals, opponent_goals, winner_id, opponent_id) VALUES ($YEAR, '$ROUND', $WINNER_GOALS, $OPPONENT_GOALS, $WINNER_ID, $OPPONENT_ID)")
    if [[ $INSERT_GAME_RESULT ==  "INSERT 0 1" ]]
    then
      echo Inserted into games, $YEAR $ROUND $WINNER $OPPONENT
    fi
  fi
done
