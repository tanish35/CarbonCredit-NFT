// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/CarbonCreditsNFT2.0.sol";

contract DeployCarbonCreditNFT is Script {
    function run() external {
        vm.startBroadcast();
        CarbonCreditNFT carbonCreditNFT = new CarbonCreditNFT();
        console.log("CarbonCreditNFT deployed at:", address(carbonCreditNFT));
        vm.stopBroadcast();
    }
}

// Contract Address: 0xabB026C81ba331999b2343c417aC15dB9216F3bD
