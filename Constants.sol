//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;
//21442 gas
contract Constants{
    address public constant MY_ADDRESS =address(1); 
    uint public constant MY_UINT =123;
}
// 23553 gass
contract Var{
    address public MY_ADDRESS;
}