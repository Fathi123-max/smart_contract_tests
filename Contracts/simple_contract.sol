// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract HelloContract {
   

   

    struct  user  {
        string name;
        uint256 age;
    }

    user[] public usersList;

  

function showUserAge (uint256 index )public virtual  view    returns  ( uint256)  {

 return usersList[index].age +5 ;
}

    function setNewUser(string memory uinpitName, uint256 userAge) public {
        
        
        usersList.push(user(uinpitName,userAge));


    }


  



  
}
