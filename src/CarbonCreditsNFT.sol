// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CarbonCreditsNFT is ERC721URIStorage, Ownable {
    uint256 public tokenCounter;

    // Pass msg.sender as the initial owner to the Ownable constructor
    constructor() ERC721("CarbonCreditsNFT", "CCNFT") Ownable(msg.sender) {
        tokenCounter = 0;
    }

    function mintNFT(
        address recipient,
        string memory tokenURI
    ) public onlyOwner returns (uint256) {
        uint256 newTokenId = tokenCounter;
        _safeMint(recipient, newTokenId);
        _setTokenURI(newTokenId, tokenURI);
        tokenCounter += 1;
        return newTokenId;
    }
}
