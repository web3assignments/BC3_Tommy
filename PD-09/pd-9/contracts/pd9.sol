//SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

/// @title A bank
/// @author Tommy

library SafeMath {
    function add(int256 a, int256 b) internal pure returns (int256) {
        int256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");
        return c;
    }
    
    function sub(int256 a, int256 b) internal pure returns (int256) {
        require(b <= a, "SafeMath: subtraction overflow");
        return a - b;
    }

}

contract Account{
    string public owner= "Account";
    function destroy() public {
        selfdestruct(msg.sender);
    }
}


/// use of: modifier, safemath, natspec comments. 
contract Bank{
    using SafeMath for int;
   int public bal=0;  ///begin balans
    Account public deployed;
   address payable owner;

    modifier onlyOwner() {
      require(msg.sender == owner, "You are not the owner!" );
      _;
   }
   
    constructor(){
      owner = msg.sender;
    }
    
    function OwnerAccount() public view returns (string memory){
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
    
    function withdraw(int amt) external{
        bal = bal.sub(amt);
    }

    function Deposit(int amt) external{
        bal = bal.add(amt);

    }
}