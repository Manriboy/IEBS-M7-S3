// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

contract distribucion_nft {
    IERC721 private MBY_NFT;

    constructor(address _MBY_NFT) {
        MBY_NFT = IERC721(_MBY_NFT);
    }

    function Envia_NFT(address[] calldata recipients) external {
        for (uint256 i = 0; i < recipients.length; i++) {
            uint256 tokenId = trae_nft(recipients[i]);
            require(tokenId > 0, "No NFT available for this recipient");
            MBY_NFT.transferFrom(address(this), recipients[i], tokenId);
        }
    }

    function trae_nft(address recipient) internal view returns (uint256) {
        uint256 totalSupply = MBY_NFT.balanceOf(address(this));
        for (uint256 i = totalSupply; i > 0; i--) {
            if (MBY_NFT.ownerOf(i) == recipient) {
                return i;
            }
        }
        return 0;
    }
}
