// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/CarbonCreditsToken.sol";

contract MintCarbonCredits is Script {
    function run() external {
        vm.startBroadcast();
        CarbonCreditsToken cct = CarbonCreditsToken(
            0xE660c2DA98BDD88bFeDe164c606D83f92a542984
        );
        cct.mint(0x424bBA2a6f1c14e4D8e2Cf1bCAE1B06740Fa4755, 69 * 10 ** 18);
        vm.stopBroadcast();
    }
}
