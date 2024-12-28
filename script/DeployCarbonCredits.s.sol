// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/CarbonCreditsNFT.sol";

contract DeployCarbonCredits is Script {
    function run() external {
        vm.startBroadcast();
        new CarbonCreditsNFT();
        vm.stopBroadcast();
    }
}
