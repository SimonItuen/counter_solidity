//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract VisibilityBase {
    uint private x =0;
    uint internal y = 1;
    uint public z = 2;

    function privateFunc() private pure returns (uint){
        return 0;
    }
    function internalFunc() private pure returns (uint){
        return 100;
    }
    function publicFunc() private pure returns (uint){
        return 200;
    }
    function externalFunc() private pure returns (uint){
        return 300;
    }

    function examples() external view{
        //accesses
        x + y + z;

        privateFunc();
        internalFunc();
        publicFunc();

        


        //can't access external contract
  
        //hack is to use this keyword
        this.externalFunc()
  
  }
}


contract VisibilityChild is VisibilityBase{
    function examples2() external view {
        y + z;
        
        internalFunc();

        publicFunc();
        
    }
}