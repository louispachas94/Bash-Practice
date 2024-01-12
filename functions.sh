#!/bin/bash


# check_even is the name of the function
check_even () {
# local is used to scope a variable to only have a value within the function
    local mod=2
# prove mod has a value in the functions but not outside
    echo "Value of $mod in this functions"
# if value running thru the function divided by 2 has a remainder of 0 - even
    if [ $(("$1" % $mod)) -eq 0 ]
    then
        echo "its even"
    else
        echo "not even"
 # end if statment   
    fi
# end of function
}

# call the functions with the value you want to test against it/run thru
check_even 10