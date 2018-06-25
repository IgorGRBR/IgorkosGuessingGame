#Here goes the game

#soo first we get a number...
num_of_files=$(ls -1 | wc -l)

user_input=-1

echo "Guess how many files there are in this directory:"

function tell_user_they_are_stupid {
	if [ $1 -gt $2 ]
	then 
		echo "Too big!"
	else
		echo "Too small!"
	fi
}

while [[ $user_input -ne $num_of_files ]]
do
	read user_input
	if [[ $user_input != "" ]]
	then
		tell_user_they_are_stupid $user_input $num_of_files
	else
		echo "Please input a number!"
	fi
done

echo "Correct!"
