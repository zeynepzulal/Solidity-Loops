// SPDX-License-Identifier:MIT

  pragma solidity ^0.8.17;


contract IfElse {

    function example(int x ) public pure returns(uint){  //bu fonksiyon sayesinde input alabiliyoruz.
       if(x < 10 && x >= 0){
           return 1;
       }
       else if(x < 0){
           return 2; //uint olunca çalismadi
       }
       else{
           return 0;
       }
    }

    function ternary(int x ) public pure returns(uint){
        return (x < 10 && x >=0) ? 1 : (x < 0) ? 2 : 0 ;
    }

    //uint sayi , bu sayi cift ise true,bu sayi tekse false

    function isEven(uint x) public pure returns(bool){ 
    return  ( x % 2 == 0 ) ? true : false;  // === ile  olmuyor
    }

 

    
    



}