#the zaft v 0.0

echo "
╭━━━━┳╮╱╱╱╱╱╭━━━━┳━━━┳━━━┳━━━━╮
┃╭╮╭╮┃┃╱╱╱╱╱╰━━╮━┃╭━╮┃╭━━┫╭╮╭╮┃
╰╯┃┃╰┫╰━┳━━╮╱╱╭╯╭┫┃╱┃┃╰━━╋╯┃┃╰╯
╱╱┃┃╱┃╭╮┃┃━┫╱╭╯╭╯┃╰━╯┃╭━━╯╱┃┃
╱╱┃┃╱┃┃┃┃┃━┫╭╯━╰━┫╭━╮┃┃╱╱╱╱┃┃
╱╱╰╯╱╰╯╰┻━━╯╰━━━━┻╯╱╰┻╯╱╱╱╱╰╯
";

echo "v 0.0 - by amzmohammad";

echo "DIR : $1";

source "zaft.cnf";
echo $ext;

arr=$(echo $ext | tr "," "\n")

for exti in $arr
do
    echo "Doing $exti Files....";
    #echo \$ext_"dest"
    var=$exti"_dest";
    cd $1
    #mv -i *."$exti" ${!var}
    cp -al *."$exti" ${!var} && rm -r *."$exti"
done

arr=$(echo $removes | tr "," "\n")

for exti in $arr
do
    echo "DELETING $exti Files....";
    #echo \$ext_"dest"
    var=$exti"_dest";
    cd $1
    #mv -i *."$exti" ${!var}
    rm *."$exti"
done
