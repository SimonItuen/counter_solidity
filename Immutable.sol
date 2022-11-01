//SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

contract Immutable {
    //45718 gas
    // address public owner = msg.sender;

    //43585 gas
    address public immutable owner;


    constructor(){
        owner = msg.sender;
    }

    uint public x;
    function foo() external {
        require(msg.sender == owner);
        x+=1;
    }
}