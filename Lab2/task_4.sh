touch "fileNames.txt"
for((i = 0; i < 5; i++)); do
	cd "folder$i"
	cd "01"
	basename *.txt >> "../../fileNames.txt"
	cd "../"
	cd "02"
	basename *.txt >> "../../fileNames.txt"
	cd "../../"
done
