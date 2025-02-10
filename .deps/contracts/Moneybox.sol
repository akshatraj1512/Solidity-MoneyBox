// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Moneybox {
    uint256 public bal;
    address private owner;

    receive() external payable { //0x5B3731441Fda89A4446116A4891313023A3B5A2B
        bal += msg.value;
    }

    function withdraw(uint amt, address payable destAdd) public {
        require(msg.sender == owner, "only owner can withdraw");
        require(amt <= bal, "not enough money in your wallet");

        destAdd.transfer(amt);
        bal -= amt;
    }
}