printf "\033c";

echo "Warning: this obfuscator is meant to obfuscate "echo"'s, and your file may not function properly when obfuscated. Please ensure that you have a backup of your .sh file before continuing"
echo "";
echo "Enter the path to your .sh file";
read filePath;
fileName="$(dirname "${filePath}")";
fileDirectory="$(basename "${filePath}")"

echo "echo '$(base64 $filePath)' | base64 -d | sh" > $filePath
chmod +x $filePath


printf "\033c";

echo 'Your file has been successfuly obfuscated, and has been overwrited';
