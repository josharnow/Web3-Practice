// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Loop {
    uint public count;

    function loop() public {
        // for loop
        // Generally, for loops are great if you know how many times you want to execute a certain block of code. In solidity, you should specify this amount to avoid transactions running out of gas and failing if the amount of iterations is too high.
        for (uint i = 0; i < 10; i++) {
            if (i == 5) {
                // Skip to next iteration with continue
                continue;
            }
            if (i == 5) {
                // Exit loop with break
                break;
            }

            ++count;
        }

        // while loop
        // If you don’t know how many times you want to execute the code but want to break the loop based on a condition, you can use a while loop. Loops are seldom used in Solidity since transactions might run out of gas and fail if there is no limit to the number of iterations that can occur.
        uint j;
        while (j < 10) {
            j++;
        }
    }
}
