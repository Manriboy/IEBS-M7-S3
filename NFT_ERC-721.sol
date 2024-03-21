// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract MBY_NFT is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    mapping(address => uint256) private ultima_creacion;
    uint256 public constant tiempo_min = 1 hours;

    constructor() ERC721("MomBreY_NFT", "MBY_NFT") {}

    function crear_NFT(address to) external {
        require(ultima_creacion[to] + tiempo_min <= block.timestamp, "Se puede max 1 NFT por hora en cada address");
        
        _tokenIds.increment();
        uint256 newTokenId = _tokenIds.current();
        _safeMint(to, newTokenId);
        ultima_creacion[to] = block.timestamp;
    }
}
 