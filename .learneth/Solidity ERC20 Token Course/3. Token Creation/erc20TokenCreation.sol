// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

import "@openzeppelin/contracts@4.4.0/token/ERC20/ERC20.sol";

// contract MyToken is ERC20 {
    // Name of token is "MyToken" and symbol is "MTK"
//     constructor() ERC20("MyToken", "MTK") {
//         // The account that deploys the contract (msg.sender) will receive the tokens
//         // The optional function decimals() of the ERC20 token standard is implemented and set to the default value of 18. This will create 1000000 tokens that will have 18 decimal places.
//         _mint(msg.sender, 1000000 * 10 ** decimals());
//     }
// }

contract EduCoin is ERC20 {
    constructor() ERC20("EduCoin", "EDC") {
        // The account that deploys the contract (msg.sender) will receive the tokens
        // The optional function decimals() of the ERC20 token standard is implemented and set to the default value of 18. This will create 1000 tokens that will have 18 decimal places.
        _mint(msg.sender, 1000 * 10 ** decimals());
    }
}