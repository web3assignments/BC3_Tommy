//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bank{
    
   int public bal=0;



    function get_balance() view public returns(int){
    return bal; 
    }

    function withdraw(int amt) public{
        bal = bal - amt;
    }

    function Deposit(int amt) public{
        bal = bal + amt;
    }
}