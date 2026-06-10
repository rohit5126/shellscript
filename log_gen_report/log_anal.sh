#!/bin/bash


function inputval(){
        local log_file=$1
        if [ $# == 0 ]; then
                echo " run the script in below format "
                echo " ./log-anal.sh <log_file_path> "
                exit 1
        fi
        if [ -e "$log_file" ]; then
                echo "file exists working on analysis ...... "
                echo "--------------------------------------------------------------------------------------"
        else
                echo "error: File does not exist"
                exit 1
        fi
}



function errorcount(){
        c=$(grep -c $1 $2)
        echo " Total count for error logs in the file is :  $c"  
        echo "    "
        echo "-------------------------------------------------------------------------------------"
}


function criticalevent(){
        echo " Total number of Critical events with line number is listed below: "
        echo "      "

        echo "Lno. Date       Time      Event      ID"
        grep -n $1 $2
        echo "---------------------------------------------------------------------------------------"

}


function topmess(){
        echo " ------------ Top 5 ERROR messages -------------"
        grep "$1" $2 | awk '{$1=$2=$3=$4=$5=$6=""; print}' | sort | uniq -c | sort -rn
        echo "---------------------------------------------------------------------------------------------------------------"
        echo ""
}

