# 1. Install pandoc from http://johnmacfarlane.net/pandoc/
# 2. Copy this script into the directory containing the .html files
# 3. Ensure that the script has execute permissions
# 4. Run the script
#
# By default this will keep the original .md file

FILES=*.html
for f in $FILES
do
  # extension="${f##*.}"
  filename="${f%.*}"
  echo "Converting $f to $filename.txt"
  `pandoc "$f" -t plain -o "$filename.txt"`
  # uncomment next line to delete the source file.
  #rm "$f"
done

# originally by https://github.com/hugorodgerbrown