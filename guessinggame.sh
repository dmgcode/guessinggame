function guessinggame {
  n_files=$(ls -l | grep "^-" | wc -l)  # number of files in current directory

  answer=1 # answer=1 implies wrong guess, answer=0 implies right guess
  while [[ $answer -eq 1 ]]
  do
    echo "Guess the number of files in the current directory:"
    read  guess
    if [[ $guess  -lt $n_files ]]
    then
      echo "Your guess of $guess is too low."
    elif [[ $guess -gt $n_files ]]
    then
      echo "Your guess of $guess is too high."
    else
      answer=0
      echo "Congratualtions, you guessed the correct number of files."
    fi
  done
}

guessinggame
