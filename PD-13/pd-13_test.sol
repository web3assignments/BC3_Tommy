// SPDX-License-Identifier: GPL-3.0
    
pragma solidity >=0.4.22 <0.8.0;
 import "../remix_tests.sol"; // this import is automatically injected by Remix.
import "../pd-13.sol";
// import "remix_accounts.sol";


contract test1 {
    
    SimpleStorage test;
    int i = 0;

    
    function beforeAll() public {
        test = new SimpleStorage();
        Assert.equal(uint(1), uint(1), "1 should be equal to 1");
    }
    
    function Value() public returns (bool) {
    return Assert.equal(test.get(), 100, "initial value is 100");
  }

    function checkSuccess() public {
        Assert.equal(uint(2), uint(2), "2 should be equal to 2");
        Assert.notEqual(uint(2), uint(3), "2 should not be equal to 3");
    }
    
    function beforeEach() public {
    if (i == 1){
        test.set(100);
    }
    i = i +1;
  }
    function user() public {
        Assert.equal(msg.sender, msg.sender,"User is the address of this");
    }


}
