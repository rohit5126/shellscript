
#!/bin/bash

set -e

source /home/ubuntu/shellscript/log_gen_report/log_anal.sh

t=$(date '+%Y-%m-%d') 
touch "/home/ubuntu/shellscript/log_gen_report/serverlogs/log_report_$t.txt"

path="/home/ubuntu/shellscript/log_gen_report/serverlogs/log_report_$t.txt"

file=$1

echo " ____________________________LOG_REPORT________________________________" > $path
echo " "
echo "--------date : $t---------" >> $path
b=$(basename $file)
echo " "
echo "---------------file name is $b ----------" >> $path
inputval $file

tl=$(wc -l $file)
echo " "
echo "------------ Number of lines in the file is $tl-------------" >> $path

echo ""

errorcount ERROR $file >> $path

topmess ERROR $file >> $path

criticalevent CRITICAL $file >> $path

echo "report generated successfully and file stored in $path"

