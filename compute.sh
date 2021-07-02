#!/bin/bash
#Matthew Archer 2/04/2020
echo "Enter an Integer: "
read INT1
echo "Enter another integer: "
read INT2
echo "Enter an operation (add, sub, mul, div, exp): "
read OPER
case "$OPER" in
        "add") echo "$INT1+$INT2=$((INT1+INT2))"
        ;;
        "sub") echo "$INT1-$INT2=$((INT1-INT2))"
        ;;
        "mul") echo "$INT1*$INT2=$((INT1*INT2))"
        ;;
        "div") echo "$INT1/$INT2=$((INT1/INT2))"
        ;;
        "exp") echo "$INT1^$INT2=$((INT1**INT2))"
        ;;
esac
