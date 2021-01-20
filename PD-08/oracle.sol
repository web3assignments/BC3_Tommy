//SPDX-License-Identifier: MIT
pragma solidity ^0.5.16;

import "https://github.com/provable-things/ethereum-api/blob/master/provableAPI_0.5.sol";

contract Helloworld is usingProvable{
    
   int public bal=0;
   string public ETHUSD;
   event LogConstructorInitiated(string nextStep);
   event LogPriceUpdated(string price);
   event LogNewProvableQuery(string description);

   function ExampleContract() public payable {
       emit LogConstructorInitiated("");
   }

   function __callback(bytes32 myid,string memory result) public {
       if (msg.sender != provable_cbAddress()) revert();
       ETHUSD = result;
       emit LogPriceUpdated(result);
   }

   function updatePrice() public payable {
       if (provable_getPrice("URL") > address(this).balance) { 
           emit LogNewProvableQuery("need Eth");
       } else {
           emit LogNewProvableQuery("Query was sent");
           provable_query("URL", "json(https://api.pro.coinbase.com/products/ETH-USD/ticker).price");
       }
   }


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