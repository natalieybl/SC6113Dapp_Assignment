// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract paynow{
    uint amount;
    address payee;
    address payer;
    address owner;

    constructor(){
    owner = msg.sender;
    console.log(owner);
    }

    // accept payer and payee address and amount to transfer
    function weixin(uint amount_to_transfer, address payer_address, address payee_address) public{
        amount = amount_to_transfer;
        payer = payer_address;
        payee = payee_address;

    }

    // display the transaction from weixin function
    function check_transaction() public view returns (address , address , uint ){
        return (payer, payee, amount);
    }

    // Function to retrieve the balance of a specific wallet address - not in used. 
    function getBalance(address _wallet) public view returns (uint) {
        return _wallet.balance;
    }


}