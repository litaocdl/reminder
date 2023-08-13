reminder() {
   arg=$1
   if [ -z $arg ]; then
      ls ~/work/tools/reminder/ | grep -e '\w*\.reminder' | cut -f1 -d.
      return
   fi

   valid=0
   ls ~/work/tools/reminder/ | cut -f1 -d. | while read -r line; do
     if [[ $line == $arg ]]; then
         valid=1 
     fi
   done

   if [[ $valid == "0" ]]; then
      echo "Unknown arguments $arg, try to add ${arg}.reminder"
      return
   fi
   echo "\n"
   cat ~/work/tools/reminder/${arg}.reminder
   echo "\n"
  
}
remindex() {
   arg=$1
   if [ -z $arg ]; then
      ls ~/work/tools/reminder/ | grep -e '\w*\.reminder' | cut -f1 -d.
      return
   fi

   valid=0
   ls ~/work/tools/reminder/ | cut -f1 -d. | while read -r line; do
     if [[ $line == $arg ]]; then
         valid=1
     fi
   done

   if [[ $valid == "0" ]]; then
      echo "Unknown arguments $arg, try to add ${arg}.reminder"
      return
   fi
   echo "\n"
   vi ~/work/tools/reminder/${arg}.reminder
   echo "\n"

}


