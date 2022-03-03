// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Variables {
    // State variables are stored on the blockchain.
    string public text = "Hello";
    uint public num = 123;

    uint public blockNumber;

    function doSomething() public {
        // Local variables are not saved to the blockchain; they are only accessible within the function they are defined in.
        uint i = 456;

        // Here are some global variables (aka special variables); used to retreive information about the blockchain, particular addresses, contracts, and transactions.
        uint timestamp = block.timestamp; // Current block timestamp
        address sender = msg.sender; // address of the caller

        blockNumber = block.number;
    }
}