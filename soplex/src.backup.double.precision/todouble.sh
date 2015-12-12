FILE=$1
echo $1

sed -i "s/^Real\*/double\*/g" $FILE
sed -i "s/^Real\&/double\&/g" $FILE
sed -i "s/^Real)/double)/g" $FILE
sed -i "s/^Real>/double>/g" $FILE
sed -i "s/^Real /double /g" $FILE

sed -i "s/\([^A-Za-z]\)Real\*/\1double\*/g" $FILE
sed -i "s/\([^A-Za-z]\)Real\&/\1double\&/g" $FILE
sed -i "s/\([^A-Za-z]\)Real)/\1double)/g" $FILE
sed -i "s/\([^A-Za-z]\)Real>/\1double>/g" $FILE
sed -i "s/\([^A-Za-z]\)Real /\1double /g" $FILE
