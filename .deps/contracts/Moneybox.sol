// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Moneybox {
    uint256 public bal;

    receive() external payable { //0x5B3731441Fda89A4446116A4891313023A3B5A2B
        bal += msg.value;
    }
}