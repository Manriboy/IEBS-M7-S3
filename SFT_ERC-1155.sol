// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract MBY_NFT is ERC1155 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    mapping(address => uint256) private ultima_creacion;
    uint256 public constant tiempo_min = 5 hours;

    constructor(string memory uri) ERC1155(uri) {}

    function crear_XNFT(address to, uint256 amount) external {
        require(ultima_creacion[to] + tiempo_min <= block.timestamp, "Se puede max 1 coleccion cada 5 horas");
        
        _tokenIds.increment();
        uint256 newTokenId = _tokenIds.current();
        _mint(to, newTokenId, amount, "");
        ultima_creacion[to] = block.timestamp;
    }
}


