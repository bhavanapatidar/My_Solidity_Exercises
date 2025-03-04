

// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/* Function Overloading

You can have multiple definitions for the same function name in the same scope.
the definition of the function must differ from each other by the types and/or the number of arguements in the arguement list.
you can overload function declarations the differ only by return type 
*/

contract FunctionOverloading{

    // function x(uint lightSwitch, uint wallet) public{

    // }

    // function x(uint wallet)public{

    // }

    function getSum(uint a, uint b) public pure returns (uint){
        return a + b;
    }
    function getSum(uint a , uint b, uint c) public pure returns(uint){
        return a + b +c;
    }

    function getSunTwoArgs() public pure returns(uint){
       return  getSum(2,3);
    }
    function getSumThreeArgs() public pure returns(uint){
       return getSum(2, 3 ,5);
    }

    
}
/*
Exercise:
1. Create two functions with the same name that return the sum of their arguements-
2. one function which takes two arguements and another function which takes three arguements.

3. Create two other functions which can call each sum function and return their various sums .
4. Depoy successfully deploy contract andd test results of overloading functions.

*/
