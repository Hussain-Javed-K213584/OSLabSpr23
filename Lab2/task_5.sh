for((i = 0; i < 5; i++)); do
	cd "folder$i"
	cd "01"
	rm *.txt
	cd "../"
	cd "02"
	pwd
	ls
	rm *.txt
	cd "../../"
	pwd
done
