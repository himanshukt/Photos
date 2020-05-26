for item in *.jpg
do
        if [ -f $item ]
            then
                 SUBSTRING=$(echo $item | cut -b -4 | uniq -u)
                mkdir -p $SUBSTRING
        fi
done

for item in *
do
    if [ -d $item ]
        then
            for z in  *.jpg 
            do
                    if [ -f $z ]
                    then
                        
                        mkdir -p $item/$(echo $z | grep -o -P '(?<=-).*(?=-)')
                        
                    fi
            done
    fi
done
for item in *.jpg
do
        if [ -f $item ]
            then
                 mv $item  $(echo $item | cut -b -4 | uniq -u)/$(echo $item | cut -c 6)                
        fi
done
