echo "Creating 5 folders...\n"
for ((i = 0; i < 5; i++)); do
	mkdir "folder$i"
done
echo "Creating sub folders..\n"
for((i = 0; i < 5; i++)); do
	cd "folder$i"
	mkdir "01"
	mkdir "02"
	cd "01" && touch test.txt
	date > test.txt
	cd ".."
	cd "02" && touch test.txt
	date > test.txt
	cd ".."
	cd ".."
	pwd
done
	
