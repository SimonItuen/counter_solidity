// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Variables{
    uint public i;
    bool public b;
    address public myAddress;

    function foo() external{
        uint notStateVariable = 456;
        bool f = false;


        i = 123;
        b = true;
        myAddress = address(1);
    }
}