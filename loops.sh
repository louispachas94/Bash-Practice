#!/bin/bash

# while loops - keep on running if true still until it turns false
# until loops - keep on running if false still until it turns true
# for loops - runs thru a sequence in an array, list, 


# while loop

# starting point
start=1

# while 1 is less than or equal to 10 do
while [[ "$start" -le 10 ]]; do
# output phrase
    echo "the start is at $start"
# grabs start variable and adds one each time it loops thru 
    start=$((start + 1))
# end of loop when it reaches 10 but before it will keep on running 
done

echo "the count is done"


#until loop

# staring point
point=1
# until 1 is greater than or equal to 10 do the below
until [[ "$point" -gt 10 ]]; do
# output phrase
    echo "the starting point value is at $point"
# grabs point value and adds 1 each time it loops
    point=$((point + 1))
# end of until loop    
done

# for loops

# starting point
jobs=("teladoc" "livongo" "celito" "vocies")
# for each item in jobs it will assign them a slot which is why we have the @ symbol. i is just used as a variable to hold the value in the array during the for loop
for i in "${jobs[@]}"
# do the below
do
# output
    echo $i
# end of loop
done

# ex #2

# value of L =2; L is less than 20; loop L+1 until L is less than 20 and comparsion is true
# tip: just a fancy one liner for loop
for (( l=2; l<20; l=l+1 )); do
# output
    echo "The L is at: $l"
# end of loop
done

# breaks in loops

# while this statement is true continue running until false and break loop
while true; do
# user enters a value
    read -p "Enter a number between 1-25 " n
# if value of n is greater than 1 AND less than 25 then continue 
    if [[ "$n" -ge 1 && "$n" -le 25 ]]; then
# output if the value is within range
        echo "you entered $n"
    else
# output since value is not within 1-25 range
        echo "your input is not in range"
# break out of the loop
        break
# end if statment
    fi
# end of while loop
done

echo "break time"