// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

/* Create a function modifier called costs for our register function that checks to see that the senders value
( hint : look up msg.value) requires to be greater then or equal to the price. Second hint: the function modifier should take an arguement */

contract Owner{
    // function modifiers
    address owner;
    //when we deploy this contract we want to set the address to the owner(msg.sender)
    constructor()  {
        owner = msg.sender;
    }
    //to write a modifier we statically declare the modifier keyword and then name it and inside we write our logic and modifications.

    modifier onlyOwner(){
        //customizable logic to modify our functions 
        require(msg.sender == owner);
        _;
        // the underscore continuous with the function 
    }

    modifier costs(uint price){
        //what msg.value: the amount in wei being sent with a message to a contract
        require(msg.value >= price);
        _;
        }
    
}

contract Register is Owner{
    //what in this code is currently modifying the function?
    mapping (address => bool) registeredAddress;
    uint price;

    constructor(uint initialprice)  {
        price = initialprice;
    }
    // function register will set msg.sender (current caller) to true

    function register() public payable costs(price) {
        //the logic will modify the outcome 
        registeredAddress[msg.sender] = true;

    }
    // onlyOwner is our function modifier that requires only the owner to ne able to change the price
    function changePrice (uint _price) public onlyOwner{
        price = _price;
    }

}
