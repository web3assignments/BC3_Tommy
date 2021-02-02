//SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

/// @title A bank
/// @author Tommy

contract Account{
    string public owner= "Account";
    function destroy() public {
        selfdestruct(msg.sender); ///acces control
    }
    
}
contract Bank{
    Account public deployed;
   int public bal=0;
   address payable owner;

    modifier onlyOwner() {
      require(msg.sender == owner, "You are not the owner!" ); ///acces control
      _;
   }
   
    constructor(){
      owner = msg.sender; ///acces control
    }
    
    function OwnerAccount() public view returns (string memory){ ///acces control
        return deployed.owner();
    } 
    function DestroyAccount() public{
        deployed.destroy(); 
        deployed= Account(address(0));
    }
    
    function Deploy() public returns(Account){
        deployed = new Account{salt: 0x00}();
        return deployed;
    }
    
    function get_balance() public view returns(int){
    return bal; 
    
    }
    /// @param amt the number of the amount that is given  
    
    function withdraw(int amt) external onlyOwner(){  ///acces control
        bal = bal - amt;
    }

    function Deposit(int amt) external onlyOwner(){  ///acces control
        bal = bal + amt; 
    }
}