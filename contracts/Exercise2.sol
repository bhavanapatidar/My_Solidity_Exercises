// SPDX-License-Identifier: MIT
pragma solidity  >= 0.7.0 < 0.9.0;

//view functions ensure that they will not modify the state (return  values)
//pure functions ensure that they will not modify and read the state (return calculations)

/* 
Exercise:
1. create a function called multiply which returns 3 multiplied by 7
2. create another function called valuePlusThree which returns the state variable value + 3
3. successfully deploy the contracts and test for the results.
**Remember** to use the appropriate modifying keywords accordingly
*/

contract MyContract{
    uint value;

    function multiply() external pure returns(uint){
        return 3*7;
    }

    function valuePlusThree() external view returns(uint){
        return value + 3;

    }


    //#######################################################################################

    //getValue is a read only function that returns a value
    function getValue() external view returns(uint){
        //rth call
        //value = 2;
        return value;

    }
    function getNewValue() external pure returns(uint) {
        
        return 3+3;
    }
    //setvalue modifies the state value
    function setValue(uint _value)external {
        value = _value;
    }
}