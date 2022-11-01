//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract IterableMapping{
    mapping(address => uint) public balances;
    mapping (address => bool) public inserted;
    address[] public keys;


    function set(address _key, uint _val) external{
        balances[_key] =_val;

        if(!inserted[_key]){
            inserted[_key] = true;
            keys.push(_key);
        }
    }

    function getSize() external view returns (uint){
        return keys.length;
    }

    function first() external view returns (uint){
        return balances[keys[0]]; //returns first address
    }

    function last() external view returns (uint){
        return balances[keys[keys.length -1]]; //returns first address
    }
    
    function get(uint _i) external view returns (uint){
        return balances[keys[_i]]; //returns first address
    }
}