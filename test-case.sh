
NAME[0]="zip"
NAME[1]="png"
NAME[2]="jpg"
NAME[3]="pdf"
NAME[4]="rar"
NAME[5]="mp3"
NAME[6]="mp4"
NAME[7]="avi"
NAME[8]="svg"
NAME[9]="mkv"
NAME[10]="tar.gz"
NAME[11]="iso"
NAME[12]="jpeg"
NAME[13]="djvu"
NAME[14]="ttf"
NAME[15]="html"
NAME[16]="txt"
NAME[17]="xml"
NAME[18]="json"

rand=$[$RANDOM % ${#NAME[@]}]
echo "First Index: ${NAME[$rand]}"

cd test
for n in {1..60}; do
    rand=$[$RANDOM % ${#NAME[@]}]
    name_file=$( mktemp XXXXXXXXXXXXXXXXXXXX )
    dd if=/dev/urandom of=$name_file."${NAME[$rand]}" bs=1 count=$(( RANDOM + 1024 ))
    rm $name_file
done
