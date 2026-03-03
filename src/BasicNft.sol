//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import {ERC721} from "../lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";

contract BasicNft is ERC721{
    uint256 private s_tokenCounter;
    mapping (uint256 => string ) private s_tokenIdToUri ;

    constructor() ERC721 ("DOGIE" , "DOG"){
        S_tokenCounter = 0;
    }

    
}

