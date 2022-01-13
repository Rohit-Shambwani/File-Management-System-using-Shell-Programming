echo "------------------------FILE MANAGEMENT SYSTEM------------------------"

echo "Give a path of folder which contain some files:"

read b

mkdir $b

cd $b

p="Y"

while [ $p = "Y" ]

do
	
	echo enter 1 to List files stored along with their sizes.


	echo enter 2 to Create files 
	
	echo enter 3 to make changes to a file

	echo enter 4 to Delete files

        echo enter 5 to move files between directories
	read n

	
	case "$n" in


	1) ls -s;;


	2) echo "Enter Username"

	   read f

	   mkdir $f

	   cd $f

	   t="y"

	   while [ $t = "y" ]

	   do

	   echo enter 1 to create TEXT DOCUMENT

	   echo enter 2 to create C Source File

	   echo enter 3 to create JAVA FILE

	   echo enter 4 to create web page related files

	   read k

	   	case "$k" in

	   	1) cat > $k.txt

	    	  
ls;;

	   	2) cat > filel.C

	    	  ls;;

	   	3) cat > fill.java

	    	  
ls;;

	   	4) cat > fiw.html

	    	  ls;;

	   	esac

	   echo Do you want to continue?

	   read w

	   if [ $w != "y" ]

	   then

	   echo BACK TO MAIN MENU

	   		cd ..
	  
 			ls

	   		break

	   fi
	   done

	   ;;

	3)
 
	   echo folder contain files


	   ls
 
	   echo Enter your username

	   read s

	   cd $s

	   echo give the name of file you want to make changes

	   read d

	   
	   echo "enter 1 for read,write,execute to user group and others"


	   echo "enter 2 for read and write to users and group"


	   echo "enter 3 for read write and execute to only users"


	   read m


	   case "$m" in


	   1) chmod 777 $d;;


	   2) chmod 660 $d;;


	   3) chmod 700 $d;;


	   esac


	   echo changes happened:-


	   ls -l

	   cd ..

	   ls;;

   
	4)

	   echo files are:-
 
	
	   ls

	   echo Enter username

	   read x

	   cd $x


	   echo enter no. of files you want to delete


	   read countt


	   for(( i=1 ; i<=$countt ; i++ ))


	   do


	   echo give filename to delete


	   read e


	   rm -r $e


	   echo file $e is deleted
 

	   echo now files are:-
 

	   ls


	   done;;
        5)echo root folder contents are:
          ls
          echo enter the path of source directory from where you want to copy the files:
          read v
          echo enter the path of destination directory to where you want to move the files:
          read z
   
          cd $v
          echo files of source dir are:-
          ls
   
          echo enter no. of files you want to move.
          read count
          for(( i=1 ; i<=$count ; i++ ))
          do
          echo files of source dir are:-
          ls
          echo enter the name of file you want to move
          read name
          mv $name $z
          cd $z
          echo content of destination dir $z now are:
          ls 
         done ;;
     esac

echo Do you want to continue?

read q

if [ $q != "Y" ]

then

	exit

fi

done
