// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/CarbonCreditsNFT2.0.sol";

contract SetRateScript is Script {
    function run() external {
        vm.startBroadcast();
        CarbonCreditNFT carbonCreditNFT = CarbonCreditNFT(0x960F177114F4ac70c1C79C7fdB5127Cf9c8bB1E8);
        carbonCreditNFT.setRate(0, 20000);
        console.log("Token rate set for tokenId 0 to 20000");

        vm.stopBroadcast();
    }
}
