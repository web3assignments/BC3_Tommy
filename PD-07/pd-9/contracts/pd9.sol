//SPDX-License-Identifier: MIT
pragma solidity ^0.5.16;
import "@openzeppelin/upgrades-core/contracts/Initializable.sol";

/// @title A bank
/// @author Tommy

contract Account{
    string public owner= "Account";
    function destroy() public {
        selfdestruct(msg.sender);
    }
    
}

contract pd9{

  Account public deployed;
    
   int public bal=0;
   
   address payable owner;
   
    modifier onlyOwner() {
      require(msg.sender == owner, "You are not the owner!" );
      _;
   }
   
    
    function OwnerAccount() public view returns (string memory){
        return deployed.owner();
    } 
    function DestroyAccount() public{
        deployed.destroy(); 
        deployed= Account(address(0));
    }
    
    function Deploy() public returns(Account){
        // deployed = new Account{salt: 0x00}();
        return deployed;
    }
      

    
    function get_balance() public view returns(int){
    return bal; 
    
    }
    ///@param amt the number of the amount that is given  
    
    function withdraw(int amt) external onlyOwner(){
        bal = bal - amt;
    }

    function Deposit(int amt) public{
        bal = bal + amt;
    }
}