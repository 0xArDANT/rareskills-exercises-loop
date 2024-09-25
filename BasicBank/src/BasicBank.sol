// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.27;

contract BasicBank {
    /// @notice deposit ether into the contract
    /// @dev it should work properly when called multiple times
    error AmountNull();
    error TransactionFailed();
    function addEther() external payable {
        require(msg.value > 0, AmountNull());
    }

    /// @notice used to withdraw ether from the contract (No restriction on withdrawals)
    function removeEther(uint256 amount) external payable {
        require(amount > 0, AmountNull());
        (bool success,) = payable(msg.sender).call{value: amount}("");
        require(success, TransactionFailed());
    }
}
