//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract GasGolf{

    //start - 50992 gas
    //use calldata - 49163 gas
    //load state variables to memory - 48952 gas
    //short circuit expressions - 48634 gas
    //loop increments - 48244 gas
    //cache array length - 48209 gas
    // load array elements to memory - 48047 gas


  uint public total;

  // [1, 2, 3, 4, 5, 100]
  function sumIfEvenAndLessThan99(uint[]  calldata nums) external{
      uint _total = total;
      uint len = nums.length;
      for(uint i =0; i< len; ++i){
          uint num = nums[i];
          if(num % 2 == 0 && num < 99){
              _total +=num;
          }
      }

      total = _total;
  } 

//    function sumIfEvenAndLessThan99(uint[]  memory nums) external{
//       for(uint i =0; i< nums.length; i +=1){
//           bool isEven = nums[i] % 2 == 0;
//           bool isLessThan99 = nums[i] < 99;
//           if(isEven && isLessThan99){
//               total +=nums[i];
//           }
//       }
//   }   
}