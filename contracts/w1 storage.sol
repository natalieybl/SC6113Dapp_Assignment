// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract store_money{
    uint money;

    // store the value
     function store_m(uint num) public {
        money = num;
     }

    // view the stored value
    function view_m() public view returns (uint){
        return(money);
   } 
}