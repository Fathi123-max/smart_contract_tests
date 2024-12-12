// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract World {
   
    struct  user  {
        string name;
        uint256 age;
    }

    user[] public usersList;

  

    function setNewUser(string calldata uinpitName, uint256 userAge) public {
        
        
        usersList.push(user(uinpitName,userAge));


    }


  



  
}
