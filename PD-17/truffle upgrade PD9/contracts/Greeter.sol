
// SPDX-License-Identifier: MIT
import "./Initializable.sol";

pragma solidity ^0.8.0;

contract greeter is Initializable{
    
   uint public bal;


    function initialize(uint q) public initializer{
     bal = q; 
    }

    function withdraw(uint amt) public{
        bal = bal - amt;
    }


}