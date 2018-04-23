all: README.md

README.md: guessinggame.sh
	echo "## File Count Guessing Game" > README.md
	echo "README was created on `date`." >> README.md
	echo " " >> README.md
	cat guessinggame.sh | wc -l >> README.md
