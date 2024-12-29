// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/CarbonCreditsToken.sol";

contract DeployCarbonCredits is Script {
    function run() external {
        vm.startBroadcast();
        new CarbonCreditsToken(69420 * 10 ** 18);
        vm.stopBroadcast();
    }
}
