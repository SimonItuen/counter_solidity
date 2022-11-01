//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Error{
    function testRequire(uint _i) public pure{
       //require that input i <= 10 
       require(_i <= 10, "i > 10");
       //more code
    }
    
    function testRevert(uint _i) public pure{
       //require that input i <= 10 
       if(_i > 10){
           revert('i> 10');
       }
    }

    uint public num = 123;

    function testAssert() public view {
        assert(num ==123);
    }
    function foo() public {
        num += 1;
        testAssert();
    }

    error MyError(address caller, uint i);
    
    function testCustomError(uint _i) public view {
        if(_i > 10){
            revert MyError(msg.sender, _i);
        }
    }
}