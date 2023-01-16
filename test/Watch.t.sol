// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import {BaseWatchQA} from "./BaseWatchQA.sol";

/**
 * @dev Foundry can't "watch" scripts (for now?) so include this in the test folder.
 *      Will output to qa/0.svg unless you override the QA contract.
 */
contract Watch is BaseWatchQA {
    function test_watch() public {
        run(0, 1);
    }
}
