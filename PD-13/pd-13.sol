// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.7.0;

contract SimpleStorage {
    

  uint public storedData;

  constructor() public {
    storedData = 100;
  }

  function set(uint x) public {
    storedData = x;
  }

  function get() public view returns (uint retVal) {
    return storedData;
  }
}