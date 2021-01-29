//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Counters.sol";


contract TommyNFT is ERC721 {

    uint256 Token;
    mapping(uint256 => string) internal tokenURIs;
    address public  admin;
    
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    
    constructor() ERC721("TommyNFT", "TNFTE" )  public {  
    _setBaseURI("https://web3examples.com/ethereum/token_examples/");
    _mint(msg.sender, 1);    
  }


    function CreateTestNFT(address to, string memory tokenUri) public returns (uint256) {
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
        _mint(msg.sender, Token);
        return newItemId;
    }
}
