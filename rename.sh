for file in *
do
   # Avoid renaming diretories!
   if [ -f "$file" ]
   then
       newname=`head -1 $file`
       if [ -f "$newname" ]
       then
              echo "Cannot rename $file to $newname - file already exists"
       else
              mv "$file" "$newname"
       fi
   fi
done
