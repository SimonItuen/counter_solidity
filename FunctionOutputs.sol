//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionOutputs{
    function returnMany() public pure returns (uint, bool){
        return (1, true);
    }
    function named() public pure returns (uint x, bool b){
        return (1, true);
    }
    }
    function assigned() public pure returns (uint x, bool b){
        x = 1;
        b = true;
        //using named positional argument saves gas
    }

    function destructuringAssignments() public pure {
        {uint x, bool b} = returnMany();
        {, bool _b} = returnMany();
    }
}