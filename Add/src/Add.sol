// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Add {
    function add(uint256 a, uint256 b) external pure returns (uint256) {
        return a + b;
    }
}
