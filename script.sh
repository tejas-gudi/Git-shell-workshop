# Task 1: 
# The first argument provided from cmd must be the language you are running it in
# Just plainly print the first argument that was provided 
# The second argument is the name of the python/C file that must be run 
# Run the python file, using input1.txt as stdin, and write the output to a file user_output1.txt 
# Display user_output1.txt to the user as user output, and the file output1.txt as the expected output 
# Once you have tested out the script and verified it's working, commit it to a branch: <your_name>

#Task 1
language=$1
echo "The language passed as argument is $language"
cat input1.txt | python3 $2 > user_output1.txt
echo "User output:"
cat user_output1.txt
echo "Expected output:"
cat output1.txt


#Task 2
for var in "$@"
do 
	echo "Running $var on test cases"
	for i in $(seq 3)
	do 
		echo "Running test case $i:"
		cat input$i.txt | Python3 $var>user_output$i.txt 
		echo "User output: "
		cat user_output$i.txt
		echo "Expected output:"
		cat output$i.txt
		echo "--------------------------------------------------"
	done
	echo "================================================"
done

