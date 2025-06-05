// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.20;

import "./impl.sol";

contract Factory {
    address[] public allImpls;

    function createImpl() public {
        Impl impl = new Impl();
        allImpls.push(address(impl));
    }
}