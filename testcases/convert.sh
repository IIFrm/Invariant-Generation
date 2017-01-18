#!/bin/bash
red="\e[31m"
green="\e[32m"
yellow="\e[33m"
blue="\e[34m"
normal="\e[0m"
bold="\e[1m"

zilu_path="./zilu"
cpa_path="./cpa"
interproc_path="./interproc"
invgen_path="./invgen"
blast_path="./blast"
mkdir -p $cpa_path
mkdir -p $interproc_path
mkdir -p $invgen_path
mkdir -p $blast_path


option1=0
option2=0
option3=0
option4=0

case $1 in 
	1 )
		option1=1;;
	2 )
		option2=1;;
	3 )
		option3=1;;
	4 )
		option4=1;;
esac


if [ $option1 -eq 1 ]; then
	g++ zilu2cpa.cpp -o zilu2cpa
	cd $zilu_path
	rm *.cpp > /dev/null
	echo -e  $yellow"Converting ZILU test file to CPAchecker test file "
	for file in `find . -name '*.cfg'`
	do
		echo -e -n $blue"."$file
		#echo -e -n $blue"."
		../zilu2cpa $file
	done
	echo -e $green" [DONE]"$normal

	cd ..
	rm $cpa_path/*.cpp
	mv $zilu_path/*.cpp $cpa_path
	rm zilu2cpa
fi


if [ $option2 -eq 1 ]; then
	g++ zilu2interproc.cpp -o zilu2interproc
	cd $zilu_path
	rm *.txt
	echo -e  $yellow"Converting ZILU test file to INTERPROC test file "
	for file in `find . -name '*.cfg'`
	do
		echo -e -n $blue"."$file
		#echo -e -n $blue"."
		../zilu2interproc $file
	done
	echo -e $green" [DONE]"$normal

	cd ..
	rm $interproc_path/*.txt
	mv $zilu_path/*.txt $interproc_path

	for file in `find $interproc_path -name '*.txt'`
	do
		sed -i "s/\ &&\ /\ and\ /g" $file
		sed -i "s/\ &&/\ and\ /g" $file
		sed -i "s/&&\ /\ and\ /g" $file
		sed -i "s/&&/\ and\ /g" $file
		sed -i "s/\ ||\ /\ or\ /g" $file
		sed -i "s/\ ||/\ or\ /g" $file
		sed -i "s/||\ /\ or\ /g" $file
		sed -i "s/||/\ or\ /g" $file

		sed -i "s/\([a-zA-Z][a-zA-Z_0-9]*\)++/\1=\1+1/g" $file
		sed -i "s/\([a-zA-Z][a-zA-Z_0-9]*\)--/\1=\1-1/g" $file
		sed -i "s/\([a-zA-Z][a-zA-Z_0-9]*\)+=/\1=\1+/g" $file
		sed -i "s/\([a-zA-Z][a-zA-Z_0-9]*\)-=/\1=\1-/g" $file
	done
	rm zilu2interproc
fi


if [ $option3 -eq 1 ]; then
	g++ zilu2invgen.cpp -o zilu2invgen
	cd $zilu_path
	rm *.c > /dev/null
	echo -e $yellow"Converting ZILU test file to invgen test file "
	for file in `find . -name '*.cfg'`
	do
		echo -e -n $blue"."$file
		#echo -e -n $blue"."
		../zilu2invgen $file
	done
	echo -e $green" [DONE]"$normal

	cd ..
	rm $invgen_path/*.c
	mv $zilu_path/*.c $invgen_path
	rm zilu2invgen
fi


if [ $option4 -eq 1 ]; then
	g++ zilu2blast.cpp -o zilu2blast
	cd $zilu_path
	rm *.c > /dev/null
	echo -e $yellow"Converting ZILU test file to invgen test file "
	for file in `find . -name '*.cfg'`
	do
		echo -e -n $blue"."$file
		#echo -e -n $blue"."
		../zilu2blast $file
	done
	echo -e $green" [DONE]"$normal

	cd ..
	rm $blast_path/*.c
	mv $zilu_path/*.c $blast_path
	rm zilu2blast
fi
