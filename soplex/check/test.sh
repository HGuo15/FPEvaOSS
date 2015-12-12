#!/usr/bin/env bash

# solve a given testset with given settings and time limit
# parameters:
# 1: name of testset (has to be in check/testset)
# 2: path to soplex executable
# 3: name of settings (has to be in settings)
# 4: time limit
# 5: results directory

# TODO handle case when python is not available
echo "run $1 $2 $3 $4 $5"

TEST=$1
TESTSET=testset/$TEST.test
SOLUNAME=testset/$TEST.solu

BINFILE=$2
BINNAME=`basename $2`

# get host name
HOST=`uname -n | sed 's/\(.zib.de\)//g'`
BINNAME=$BINNAME.$HOST

SETTINGS=$3
SETTINGSFILE=../settings/$SETTINGS.set

TIME=$4

RESDIR=$5

OUTFILE=$RESDIR/check.$TEST.$BINNAME.$SETTINGS.out
ERRFILE=$RESDIR/check.$TEST.$BINNAME.$SETTINGS.err
RESFILE=$RESDIR/check.$TEST.$BINNAME.$SETTINGS.res
SETFILE=$RESDIR/check.$TEST.$BINNAME.$SETTINGS.set
STDFILE=$RESDIR/check.$TEST.$BINNAME.$SETTINGS.std

# create results directory
mkdir -p $RESDIR

# Abort if files are missing
if ! test -f $SETTINGSFILE
then
    echo "Settings file not found: "$SETTINGSFILE
    exit
fi

if ! test -f $TESTSET
then
    echo "Testset file not found: "$TESTSET
    exit
fi

if ! test -f $BINFILE
then
    echo "SoPlex executable not found: "$BINFILE
    exit
fi

date >$OUTFILE
date >$ERRFILE
start=`date +%s`

# Avoid problems with foreign locales (two separate commands for SunOS)
LANG=C
export LANG

# Determine awk program to use.
AWK=awk
OSTYPE=`uname -s | tr '[:upper:]' '[:lower:]' | sed -e s/cygwin.*/cygwin/ -e s/irix../irix/`

case $OSTYPE in
    osf1)  AWK=gawk ;;
    sunos)  AWK=gawk ;;
    aix)  AWK=gawk ;;
esac

# Create testset
$BINFILE --loadset=$SETTINGSFILE -t$TIME --saveset=$SETFILE

# Solve the instances of the testset
counts=100
while [ $counts -gt 0 ]
do
    counts=$((counts-1))
    date >$OUTFILE
    date >$ERRFILE
    for instance in `cat $TESTSET`
    do
        echo @01 $instance
        echo @01 $instance >>$ERRFILE
        $BINFILE $opt --loadset=$SETFILE -c -q -t$TIME $instance 2>>$ERRFILE
        echo =ready=
    done | tee -a $OUTFILE
done


date >>$OUTFILE
date >>$ERRFILE
end=`date +%s`
runtime=$((end-start))

# check whether python is available
ret=true
if command -v python >/dev/null 2>&1
then
	./evaluation.py $OUTFILE | tee $RESFILE
        res=`sed -n "48p" $RESFILE | cut -d ':' -f2 | cut -d ',' -f4-`
        std=`sed -n "48p" $STDFILE | cut -d ':' -f2 | cut -d ',' -f4-`
        if [ "$res" != "$std" ]
        then
              echo "$OUTFILE::$res"
              echo "$STDFILE::$std"
              ret=false
        fi
else
	./evaluation.sh $OUTFILE | tee $RESFILE
fi

echo $ret > sat.cov
echo $runtime > score.cov
