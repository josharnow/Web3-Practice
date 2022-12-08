// SPDX-License-Identifier: MIT
// ^Indicates the license type to the compiler.
pragma solidity ^0.8.7; // Specifies the version of Solidity to use. The carot indicates that the attached number is the minimum allowed version.

contract SimpleStorage { // A "contract" is analagous to a class in other languages.
    // Some data types:
    bool hasFavoriteNumber = true; // Variable declaration and initialization. State variables are designated as "internal" unless otherwise sepecified, meaning that they cannot be seen externally once the contract is deployed to the blockchain.
    uint public favoriteNumber = 123; // Unsigned and signed integers default to 256 bits unless otherwise specified. By designating this as "public," a getter function is created that allows the variable to be accessed externally.
    uint privateFavoriteNumber = favoriteNumber;
    address myAddress = 0xF14FaD4146D08536E4D91E7076d3b64a1363cDE4; // Holds a 20 byte value, which is the size of an Ethereum address.
    People public person = People({favoriteNumber: 4, name: "Josh"}); // This creates a new "person" object from the struct defined below.

    People[] public people; // Declares and initializes and empty dynamic array.


    struct People { // Structs are also akin to classes
        uint favoriteNumber;
        string name;
    }

    // When a function call is made to modify the blockchain state, a new transaction is created.
    // The more computationally intensive the function, the greater the cost of gas per associated transaction. 
    function store(uint _favoriteNumber) public { // This function can be called externally once the contract is deployed since it is designated as "public." 
        favoriteNumber = _favoriteNumber; // Sets favoriteNumber to the argument passed.
        favoriteNumber = _favoriteNumber + 1 - 1; // Comment out this line to see how gas cost correlates to computational complexity.
        // uint testVar = 5; // Since this variable is defined within the function block, it is block scoped to this function (i.e. it cannot be accessed outside of this function).
    } // Since this is a function, it doesn't require a trailing semicolon.

    function makeVarPublic() public view returns(uint) { // This function emulates what is involved under the hood when designating a variable as "public."
    // The "returns" keyword designates the type of data returned by the function.
    // "View" and "pure" functions do not require gas when called alone. These types of functions are read-only.
    // However, if a function that requires gas calls a view or pure function, it will cost gas.
        return privateFavoriteNumber;
    }



}