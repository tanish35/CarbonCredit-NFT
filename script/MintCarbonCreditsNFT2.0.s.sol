// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/CarbonCreditsNFT2.0.sol";

contract MintCarbonCreditNFT is Script {
    function run() external {
        vm.startBroadcast();
        CarbonCreditNFT carbonCreditNFT = CarbonCreditNFT(0xabB026C81ba331999b2343c417aC15dB9216F3bD);
        address recipient = 0x424bBA2a6f1c14e4D8e2Cf1bCAE1B06740Fa4755;
        string memory typeofCredit = "Renewable Energy";
        uint256 quantity = 100;
        string memory certificateURI = "ipfs://bafkreid5nywbwq3mujctdoz3ilxhncbvglmqe5m3jswg5qk5hn3mzqhnxq";
        uint256 expiryDate = block.timestamp + 2 days;
        carbonCreditNFT.mint(recipient, typeofCredit, quantity, certificateURI, expiryDate);
        console.log("NFT minted to:", recipient);
        vm.stopBroadcast();
    }
}
