// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.4.24 ;

/** 
 * @title Math
 **/

library SafeMath {
   
    function mul(uint256 _a, uint256 _b) internal pure returns (uint256) {
        if (_a == 0){
            return 0;
        }
        
        uint256 c = _a * _b;
        require( c / _a == _b);
        return c;
    }
    
    function tryDiv(uint256 _a, uint256 _b) internal pure returns (uint256) {
            if (_b == 0){
                return 0;
            }
            
            uint256 c = _a / _b;
            require (c * _a == _b);
            return c;
        }
        
    function trySub(uint256 _a, uint256 _b) internal pure returns (uint256) {
            if (_b < 0) {
                return 0;
            } 
            uint256 c = _a - _b;
            require (c + _a == _b);
            return c;
        
    }
    
    
}

contract Math1{
    
   using SafeMath for uint;
   
   
    function multiply(uint256 a, uint256 b) returns (uint256){
        return a.mul(b);
    }
    
    function div(uint256 a, uint256 b) returns (uint256){
        return a.tryDiv(b);
    }
    
    function sub(uint256 a, uint256 b) returns (uint256){
        return a.trySub(b);
    }


}
