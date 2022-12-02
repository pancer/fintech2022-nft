// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract FintechNFT is ERC721Enumerable, Ownable {
    string private _baseTokenURI;

    constructor() ERC721("Fintech", "FNTCH") {}

    function mint() public {
        uint256 totalSupply = totalSupply();
        _safeMint(msg.sender, totalSupply + 1);
    }

    function setBaseURI(string memory baseURI) public onlyOwner {
        _baseTokenURI = baseURI;
    }

    function _baseURI() internal view override returns (string memory) {
        return _baseTokenURI;
    }

    function tokenURI(uint256 _tokenId) public view override returns (string memory) {
        return string(abi.encodePacked(_baseURI(), Strings.toString(_tokenId)));
    }
}
