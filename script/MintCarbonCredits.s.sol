// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/CarbonCreditsNFT.sol";

contract MintCarbonCredits is Script {
    function run() external {
        vm.startBroadcast();

        CarbonCreditsNFT ccNFT = CarbonCreditsNFT(
            0x150Fa2411e99AC9D98E862496fc5E710b0aF63BB
        );

        address recipient = 0x424bBA2a6f1c14e4D8e2Cf1bCAE1B06740Fa4755;

        string
            memory tokenURI = "https://blue-glamorous-spider-989.mypinata.cloud/ipfs/bafkreic4ly6zt3u5vteb5tylx4jcpiy6weycbuqxai6t557bvvxcwqjop4";

        ccNFT.mintNFT(recipient, tokenURI);

        vm.stopBroadcast();
    }
}
