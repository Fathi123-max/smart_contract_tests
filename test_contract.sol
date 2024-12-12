// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract HelloWorld {
   
    struct  user  {
        string name;
        uint256 age;
    }

    user[] public usersList;

  

    function setNewUser(string calldata userName, uint256 userAge) public {
        
        
        usersList.push(user(userName,userAge));


    }


  



  
}
