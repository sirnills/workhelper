#! /bin/bash

CASE=$1
WORK="/work/${CASE}"
DLD="/home/sir_nills/Downloads/"
#SOSR= 'ls -ltr |tail -1 | awk '{print '$9'}''


cd /home/sir_nills/Downloads/
SOSR="$(ls -ltr |tail -1 | awk '{print $9}')"
mkdir $WORK
mv $SOSR $WORK
cd $WORK
tar xf $SOSR
rm -f $SOSR
SOSDIR="$(ls -dltr */|tail -1 | awk '{print $9}')"
cd  $SOSDIR
checksysreport -s . > Checksysreport
touch rhelck.log
cat installed-rpms | grep 'redhat-release' > rhelck.log
#alias gameover='cd $WORK/$SOSDIR'
#$gameover
