// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import {Test} from "forge-std/Test.sol";
import {IRenderer} from "../contracts/IRenderer.sol";
import {QA} from "../script/qa.s.sol";

/**
 * @dev Foundry can't "watch" scripts (for now?) so include this in the test folder.
 *      Will output to qa/0.svg unless you override the QA contract.
 */
contract BaseWatchQA is QA, Test {
    /// @dev suite-specific setup
    function setUp() public virtual {}
}
