#!/bin/bash

filename=""


#While loop to read line by line

        
while read -r line
do
    readLine=$line
    for file in  pdf/*.pdf
    do 
        pdfile="${line:0:10}"
        # run the pdf command pickup the password from the file and decrypt and store the password removed file in differ name and location
        /usr/bin/pdf --password=$line --decrypt $file somename-$pdfile.pdf

     
    done
done < "$filename"
