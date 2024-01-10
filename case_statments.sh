#!/bin/bash
# ask user for a value to test the in statement
read -p "give me a value " L

# statment is the entered value in; CASE is the start call 
case $L in
# is the value betwwen 3-9
    [3-9])
# if so output 
        echo 'is it here';;
# is the value ANYTHING other than the above
    *)
# if so output
        echo 'other'
# end of statment call; end call of statment esac
esac