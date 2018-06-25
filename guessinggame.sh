#Here goes the game

#soo first we get a number...
num_of_files=$(ls -1 | wc -l)

user_input=-1

while [ $user_input -ne $num_of_files ]
do
	read user_input
	if [ $user_input -gt $num_of_files ]
	then
		echo "Too big!"
	else
		echo "Too small!"
	fi
done

echo "Correct!"
