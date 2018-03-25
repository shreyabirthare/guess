makefile
all: readme title date lines
	

	readme:
		touch README.md
	

	title:
		echo "# Guessing Game" >> README.md
	

	date:
		echo "Make was run at the following time:" >> README.md
		date -u >> README.md
	

	lines: guessinggame.sh
		echo "guessinggame.sh contains the following amount of lines:" >> README.md
		wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
