// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ValueTypes{
    bool public b = true;
    uint public u = 123; //uint = uint256
    int public i = -123; //int = int256
    int public mintInt = type(int).min;
    int public maxInt = type(int).max;


}