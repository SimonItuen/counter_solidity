//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionModifier{
    bool public paused;
    uint public count;

    function setPause(bool _paused) external {
        paused =_paused;
    }

    modifier whenNotPaused(){
        require(!paused, "paused");
        _;
    }

    function inc() external whenNotPaused{
        count +=1;
    
    }

    function dec() external whenNotPaused{
        count -=1;
    }

    modifier cap(uint _x){
         require(_x < 100, "x >= 100");
         _;
    }

    //They take in inputs

    function incBy(uint _x) external whenNotPaused cap(_x){   
        count += _x;
    }

    //It can sandwich a function

    modifier sandwich(){
        //code here
        count += 10;
        _; //execute code
        //afterwards more code is executed here
        count *=2;
    }

    function foo() external sandwich {
        count +=1;
    }
}