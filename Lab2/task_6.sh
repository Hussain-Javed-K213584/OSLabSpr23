if [[ -z $1 ]]; then
	read -p "Input a number: " SERIES
	echo -e "Series 1: 0\nSeries 2: 1"
	PREV=0
	NEXT=1
	for((i = 1; i <= $SERIES; i++)); do
		((NEW=$PREV+$NEXT))
		n=$(($i + 2))
		echo "Series $n: " $NEW
		PREV=$NEXT
		NEXT=$NEW
		
	done
else
	echo "Error: Script does not take parameters"
fi
