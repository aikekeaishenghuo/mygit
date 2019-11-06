#/bin/bash
gno= 0
for i in `seq 1 1 1086 `
do
    ((gno++))
    echo $gno
    one=$(awk 'NR=='$gno'{print $1}' dur)
    two=$(awk 'NR=='$gno'{print $2}' dur)
#    echo $one
#    echo $two
    t1=1
    if [ `expr $two \> $t1` -eq 1  ] ; then
        cp $one 1-
    else
        cp $one 0-1
        echo $two
    fi

    
done
