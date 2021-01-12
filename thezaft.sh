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

echo "CMD : $1"
echo "DIR : $2";

source "zaft.cnf";
#echo $ext;


if [ $1 == "arrange" ]
then
   arr=$(echo $ext | tr "," "\n")
   for exti in $arr
   do
      echo "Doing $exti Files....";
      #echo \$ext_"dest"
      var=$exti"_dest";
      cd $2
      #mv -i *."$exti" ${!var}
      cp -al *."$exti" ${!var} && rm -r *."$exti"
   done
elif [ $1 == "clean"  ]
then
   arr=$(echo $removes | tr "," "\n")
   for exti in $arr
   do
       echo "DELETING $exti Files....";
       #echo \$ext_"dest"
       var=$exti"_dest";
       cd $2
       #mv -i *."$exti" ${!var}
       rm *."$exti"
   done
fi




