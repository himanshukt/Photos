for file in file/*.jpg
do
    year=$(echo $(basename $file) | cut -d- -f1)
    month=$(echo $(basename $file) | cut -d- -f2)
    mkdir -p photos/$year/$month
    mv $file photos/$year/$month
done
