README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo >> README.md
	date >> README.md
	echo >> README.md
	echo "Number of lines in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | awk '{print $$1}' >> README.md
