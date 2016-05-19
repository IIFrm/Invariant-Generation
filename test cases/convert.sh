#!/bin/bash
red="\e[31m"
green="\e[32m"
yellow="\e[33m"
blue="\e[34m"
normal="\e[0m"
bold="\e[1m"

iif_path="./iif-test"
cpa_path="./cpa-test"
interproc_path="./interproc-test"
mkdir -p $cpa_path
mkdir -p $interproc_path


option1=0
option2=0
if [ $# -lt 1 ]; then
	option1=1
	option2=1
else 
	if [ $1 -eq 1 ]; then
		option1=1;
	else 
		if [ $1 -eq 2 ]; then
			option2=1;
		fi
	fi
fi



g++ iif2cpa.cpp -o iif2cpa
if [ $option1 -eq 1 ]; then
	cd $iif_path
	rm *.cpp > /dev/null
	echo -e -n $yellow"Converting IIF test file to CPAchecker test file "
	for file in `find . -name '*.cfg'`
	do
		echo -e -n $blue"."
		../iif2cpa $file
	done
	echo -e $green" [DONE]"$normal

	cd ..
	rm $cpa_path/*.cpp
	mv $iif_path/*.cpp $cpa_path
fi
rm iif2cpa





g++ iif2interproc.cpp -o iif2interproc
if [ $option2 -eq 1 ]; then
	cd $iif_path
	rm *.txt
	echo -e -n $yellow"Converting IIF test file to INTERPROC test file "
	for file in `find . -name '*.cfg'`
	do
		echo -e -n $blue"."
		../iif2interproc $file
	done
	echo -e $green" [DONE]"$normal

	cd ..
	rm $interproc_path/*.txt
	mv $iif_path/*.txt $interproc_path
fi
rm iif2interproc
