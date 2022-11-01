//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Array{
   uint[] public nums = [1,2,3];
   uint[3] public numsFixed = [4,6,7];

   function examples() external {
       nums.push(4); //[1,2,3,4] you can't push to a fixed sized array
       uint x = nums[1]; //get element at index 1;
       nums[2] = 777; //[1,2,777,4]
       delete nums[1]; //[1,0,777,4] it doesn't change the size
       nums.pop(); //[1,0,777]
       uint len = nums.length;

       //create array in memory
       uint[] memory a = new uint[](5);
       a[1] =123;
   }

   function returnArray() external view returns (uint[] memory){
       return nums; 
   }
}