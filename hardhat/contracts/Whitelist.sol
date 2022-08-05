// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Whitelist{
    uint maxNumOfWhitelistedAddresses;
    constructor(){
        maxNumOfWhitelistedAddresse = 10;
    }
    mapping (address=>bool) public whitelistedAddresses;
    uint numOfWhitelistedAddresses;
    function addAddressToWhitelist() public{
        require(!whitelistedAddresses[msg.sender],'You are already whitelisted');
        require(numOfWhitelistedAddresses < maxNumOfWhitelistedAddresses,'Max number of whitelisted addresses reached');
        whitelistedAddresses[msg.sender] = true;
        numOfWhitelistedAddresses+=1;
    }

}