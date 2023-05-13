// SPDX-License-Identifier:MIT

  pragma solidity ^0.8.17;

  contract Loops{
     
      uint[] public numbers; //dynamic array
      uint[4] public numbers2 = [1,2,3,4]; //fixed size ---> length = 3       
      
      // 1 sayisina ulasan ve return eden bir fonksiyon yazin
      function getFirst() public view returns(uint){
          return numbers2[0];
      }

      //kullanicidan uint bir array al.Array icindeki sayilari topla retrun et
      function add(uint[] memory arr) public pure returns(uint){
          return ( arr[arr.length -1] + arr[0]) / 2 * arr.length;


          /*
          uint total;
          for(uint i; i < arr.length; i++){
              total += arr[i];
          }
          return total;
          */
      }



      /*
       while ve do-while solidity de cok nadir kullanilirlar
       çünkü gas limitini asiyorlar.Transaction hatasi aliriz.

       Genel olarak FOR döngüsü kullanilir
      */

      function whileLoop() public pure returns(uint){ 
          uint j;
          while(j < 10){
              ++j; //pre-increment operator
              //j++;
          }
        return j;
      }


      function forLoop() public pure returns(uint){
          uint a;
          for(a=0; a<15; ++a){
              if(a == 5){
                  continue;
              }
              if(a == 7){
                  break;
              }
          }
           return a;
      }

  } 


