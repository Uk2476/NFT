//SPDX-License-Identifier : MIT
pragma solidity ^0.8.18;

import {Script,console} from "forge-std/Script.sol";
import {BasicNft} from "../src/BasicNft.sol";
import {DevOpsTools} from "foundry-devops/src/DevOpsTools.sol";

contract MintBasicNft is Script{


    function run () external {
        address DeployedAddress = DevOpsTools.get_most_recent_deployment("BasicNft", block.chainid);
    }

    function mnitNftOnContract(address memory basicNftAddress) public {
        vm.startBroadcast();
        BasicNft(basicNftAddress).mintNft();
        vm.stopBroadcast();
    }
}
