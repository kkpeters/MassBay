mkdir Happy
directories=$(ls -d /*/)
for dir in ${directories};
do
    dirName=$(basename "$dir")
    touch "Happy/${dirName}"
done
