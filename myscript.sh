#!bin/bash

# ECHO COMMANDS
echo "jissmon jose"


# USING MKDIR TO CREATE A DIRECTORY USING SHELL SCRIPTING.
mkdir -v sample_dir 


# VARIABLES
# variables r uppercase since it s a  convention. not mandatory.
# letters numbers and undercsores are allowed.
NAME='Avengers'
DATE='12-05-2019'
echo "the move is": $NAME "and released on": $DATecho "jissmon jose"E
echo the movie is: ${NAME} and released on: ${DATE}

# USER INPUT
# to prompt the user to  get the input use "read -p"
# example1
read -p "Enter Your Name: " NAME
echo name is $NAME! nice to meet you

# example2
touch file55
read -p "Enter the details:" FAVOURITE_TEAM
echo $FAVOURITE_TEAM >>file55
echo Success!


# SIMPLE IF STATEMENT
NAME='Ajith'
if [ $NAME=='Ajith' ]
then
    echo "Yor name is Ajith"
fi

# IF - ELSE STATEMENT
NAME="kumar"
if [ "$NAME" == "thala" ]
then
    echo "name is thala"
else
    $num2 $num3echo "name not thala"
fi

# ELIF STATEMENT
# finding largest 0f 3
# use -gt for '>' operator & -a for 'and' operator
read -p "enter 3 numbers:" num1 num2 num3
echo $num1
echo $num2
echo $num3
if [ "$num1" -gt "$num2" -a "$num1" -gt "$num3" ]
then  
    echo "$num1 is greater"
elif [ "$num2" -gt "$num1" -a "$num2" -gt "$num3" ]    
then
    echo "$num2 is greater"
elif [ "$num3" -gt "$num1" -a "$num3" -gt "$num2" ]
then   
    echo "$num3 is greater"
else
    echo "none larger"
fi

# EXAMPLE 2
read -p "Enter Name:" NAME
echo $NAME
if [ "$NAME" == "JACK" ]
then
    echo "name is jack"
elif [ "$NAME" == "SACK" ]
then
    echo "name is SACK"
else
    echo "both wrong"
fi


# **COMPARISONS**

# -eq :- returns true if values are equal.used instead of '=='
read -p "Enter two numbers:" NUM1 NUM2
echo $NUM1 $NUM2
if [ "$NUM1" -eq "$NUM2" ]
then
    echo "$NUM1 and $NUM2 ARE EQUAL"
else
    echo "$NUM1 and $NUM2 NOT EQUAL"
fi

# -ne :- returns true if both not equal. alternative of '!='
read -p "Enter two numbers:" NUM1 NUM2
echo $NUM1 $NUM2
if [ "$NUM1" -ne "$NUM2" ]
then
    echo "$NUM1 and $NUM2 ARE not EQUAL"
else
    echo "$NUM1 and $NUM2 EQUAL"
fi


# -gt :- returns true if val1 > val2 else false 
read -p "Enter two numbers:" NUM1 NUM2
echo $NUM1 $NUM2
if [ "$NUM1" -gt "$NUM2" ]
then
    echo "$NUM1 is greater"
else
    echo "$NUM2 IS GREATER"
fi

# -lt :- return true val1 < val2, else false 
read -p "enter numbers:" NUM1 NUM2
echo $NUM1 $NUM2
if [ "$NUM1" -lt "$NUM2" ]
then
    echo "$NUM1 IS SMALLER"
else
    echo "$NUM2 IS SMALLER"
fi

# -ge :- returns True if num1 >= num2 else returns false.
read -p "Enter two numbers: " NUM1 NUM2
echo $NUM1 $NUM2
if [ "$NUM1" -ge "$NUM2" ]
then
    echo "$NUM1 IS GREATER THAN OR EQUAL TO $NUM2"
else
    echo "Both not equal and $NUM1 not greater than $NUM2"
fi

# -le :- returns True if num1 <= num2 else returns false.
read -p "Enter two numbers: " NUM1 NUM2
echo $NUM1 $NUM2
if [ "$NUM1" -le "$NUM2" ]
then
    echo "$NUM1 IS LESSER THAN OR EQUAL TO $NUM2"
else
    echo "Both not equal and $NUM1 not lesser than $NUM2"
fi


# ** FILE CONDITIONS ** 
# -f :- checking whether the given ocbject is a file or not.
FILE_NAME='file55'
if [ -f $FILE_NAME ]
then    
    echo "$FILE_NAME is a file"
else
    echo "$FILE_NAME not a file"
fi

# -e :- whether file exists or not.
FILE_NAME='file33'
if [ -e $FILE_NAME ]
then
    echo "file exists"
else
    echo "not exists"
fi


# -d :- returns true if it is a driectory else false.
DIR_NAME='sample_dir'
if [ -d $DIR_NAME ]
then
    echo "it is a directory"
else
    echo "not a directory"
fi


# *** CASE STATEMENTS ***
# FIRST PROMPT THE USER TO INPUT A VALUE.
# then specify a case stmt where ANSWER put in by user satisfy any of
# those cases echo is printed. ie if user gives- yes or YES or y or Y
# then echo is printed. end each cases with 2 semicolons
#  same method for 2nd case also. 
# and if both cases doesnt match the user input.
# then specify '*)' option which refers to 'default catch all condition'.not neccessary
# finally end the case statement with 'esac' keyword

read -p "Are you older than 21?(Y/N):" ANSWER
echo $ANSWER
case $ANSWER in 
    # later add some test cases
    [Yy] | [Yy][Ee][Ss])
        echo "You Can have a beer :)"
        ;;
    [Nn] | [Nn][Oo])
        echo "Sorry no Beer :("
        ;;
    *)
        echo "Please enter correct details"
        ;;
esac


read -p "Good Morning: " ANSWER
# echo $ANSWER
case $ANSWER in
    'Good Morning')
        echo "Thanks:)"
    ;;
    'Good Afternoon')
        echo "Its Morning Sir"
    ;;
    *)
        echo "Sorry Sir"
    ;;
esac

# ***FOR LOOP***
# assigned values to NAMEs var. iterate thru each using 'name' var
# specify do keyword and echo each names 
# ie $name, here v ue since v r calling name variable on each iteration.
NAMES="Jissmon Ajith Kumar Sagar Donald"
for name in $NAMES
    do
     echo $name
done


files="new.txt new3.txt test_dir"
for each in $files
    do  
        if [ -f $each ]
        then    
            echo "$each is a file"
        else
            echo "$each not a file"
        fi
done


filesdir="new.txt new3.txt test_dir nope"
for each in $filesdir
    do
        if [ -f $each ]
        then 
            echo "$each is a file"
        elif [ -d $each ]
        then 
            echo "$each is a directory"
        else
            echo "$each is neither a dir nor a file"
        fi
done

# FOR LOOP TO RENAME FILES
# HERE V DECLARE VARIABLE FILES AND ASSIGN ALL TXT FILES TO IT USING $ SIGN
FILES=$(ls *.txt)
NAME='data'
for file in $FILES
    do
        echo "Renaming $file to data-$file"
        mv $file $NAME-$file
done 

# REMOVING DIRECTORIES DROM THE CURRENT DIRECTORY****
FILES=$(ls)
for dir in $FILES
    do  
        if [ -d $dir ]
        then
            echo "Deleting $dir from $(pwd)"
            rm -r $dir
        else
            echo "$dir not a directory"
        fi
done


# FUNCTIONS IN SHELL**

define a function and call it
function sayhello()
{
    echo "hello"
}
sayhello

# FUNCTIONS WITH PARAMETERS 
# here v give the positions for each parameter that v pass

function sumtwo()
{
    C=$(($1+$2))
    echo $C
}
sumtwo 4 5


function greet()
{
    echo "Hello Iam $1 and im $2 years old"

}
greet "jissmon jose" "23"

function addmarks()
{
    TOTAL=$(($1 + $2 + $3))
    echo $TOTAL
}
addmarks 45 67 78


# EXECUUTING COMMAND FROM SCRIPT FILE
mkdir -v test_dir && cd test_dir 
echo "Created test_dir and moved to it"
touch students.txt
echo "Created students file"
echo "jissmon jose">>students.txt
echo "Edited the file"

