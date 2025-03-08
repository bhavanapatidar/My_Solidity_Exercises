/* 
A cryptographic hash function (CHF) id a mathematical algorithm that maps data of arbitrary size 
(often called the "message ") to a bit array of a fixed size (the "hash value", or "hash", or "message digest").
It is a one-way function , that is , a function which is practically infeasible to invert or reverse the computation.

Solidity inbuild cryptographic functions as well. folling are important methods:

Keccak256(bytes memory) returns (bytes32) - computes the keccak-256 hash of the input.

keccak is a leading hashing function, designed by non-NSA designers. Keccak won NIST competition to become the official SHA3
Keccak is a family of cryptographic sponge functions and is designed as an alternatve to SHA-256

*/

contract GenerateRandomNumber {
    //Buiild a random number generator which takes an input range and uses cryptographic hashing
    //modulo (%) - so by computing against the reminder we will be able to produce a number with in a range.
    // cryptographic hashing

    function ranMod(uint range) external view returns (uint){
        // Grab information from blockchain randomlyyy to generate generate random numbers - we need something dynamical 
        // abi.encodepacked concatanates arguements nicely

        return uint(keccak256(abi.encodepacked(block.timestamp, block.difficulty,msg.sender))) % range; 
    } 
}