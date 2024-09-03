// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract coconutVendingMachine {

    // state variables
    address public owner;
    mapping (address => uint) public coconutBalances;

    // set the owner as th address that deployed the contract
    // set the initial vending machine balance to 100
    constructor() {
        owner = msg.sender;
        coconutBalances[address(this)] = 100;
    }

    // Purchase donuts from the vending machine
    function purchaseCoconut(uint amount) public payable {
        require(msg.value >= amount * 0.00001 ether, "You must pay at least 0.00001 ETH per coconut");
        require(coconutBalances[address(this)] >= amount, "Not enough coconuts in stock to complete this purchase");
        coconutBalances[address(this)] -= amount;
        coconutBalances[msg.sender] += amount;
    }

    function getCoconutBalance() public view returns (uint) {
        return coconutBalances[address(this)];
    }

    // Let the owner restock the vending machine
    function restockCoconut(uint amount) public {
        require(msg.sender == owner, "Only the owner can restock.");
        coconutBalances[address(this)] += amount;
    }

}