echo " Try to guess how many files are in current directory ?"
read nfiles
function promot {
echo "please Try to guess again"
echo "how many files are in the current directory??"
read nfiles
}
rcount=$(ls -1 | wc -l)
while  [[ $nfiles -ne $rcount ]]
do
if [[ $nfiles -gt $rcount ]]
then 
echo "your guess is too high "
else 
echo "your guess is too low "
fi
promot
done 
echo "$nfiles  files is correct"
echo "Congratulations, you successfully guessed the count of files in this directory"
