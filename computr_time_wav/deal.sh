gno= 0
for i in `seq 1 1 15 `
do
    ((gno++))
#    echo $gno
    one=$(awk 'NR=='$gno'{print $1}' wav.scp)
#    two=$(awk 'NR=='$gno'{print $2}' wav.scp)
#    echo $one
#    echo $two
    /data/chunwei.gong/install/python/bin/python3  time.py  $one 
done
