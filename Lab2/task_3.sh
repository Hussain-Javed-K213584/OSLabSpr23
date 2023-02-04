echo "Going into folders files"
touch "main.txt"
for((i=0; i<5; i++)); do
	cd "folder$i"
	echo "In folder$i"
	pwd
	cat "01/test.txt" >> "../main.txt"
	cat "02/test.txt" >> "../main.txt"
	cd "../"
done
