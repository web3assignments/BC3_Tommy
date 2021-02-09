// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.4.24;
import "remix_tests.sol"; // this import is automatically injected by Remix.
import "../contracts/3_Ballot.sol";

contract test1{
    
    Math1 math1;
    
    uint i = 0;
    
    function beforeAll() public{
        math1 = new Math1();
    }
    
    function beforeEach() public {
    if (i == 0) {
      math1.multiply(1, 1);
      math1.div(1, 1);
      math1.sub(1,1);
    }
    i = i + 1;
  }
    
    function overflow1() public returns (bool){
        uint a = 4;
        uint b = 2 ** 256 -1;
        return Assert.equal(
            a*b,
            2 ** 256 -4,
            "no overflow"
            );
    }
    
    
    function safemultiply() public returns (bool){
        uint256 a = 2;
        uint256 b = 2 ** 256 -1;
        return Assert.equal(
            address(math1).call.gas(40000).value(0)("multiply", [a, b]),
            false,
            "did not revert"
            );
    }
    
    
    function overflowDiv() public returns (bool){
        uint a = 10;
        uint b = 1;
        return Assert.equal(
            a / b,
            10,
            'correct'
            );
    }
    
        function overflowDivIncorrect() public returns (bool){
        uint a = 10;
        uint b = 1;
        return Assert.notEqual(
            a / b,
            5,
            'incorrect'
            );
    }
    
            function overflowSubIncorrect() public returns (bool){
        uint a = 1;
        uint b = 10;
        return Assert.notEqual(
            a - b,
            5,
            'cannot be below 0'
            );
    }
}