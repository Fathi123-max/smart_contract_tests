// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract HelloWorld {
    string message;
    address contractAddress;
    int256 numberNigative = -88;

    bytes32 b = "some_message";
    string name;
    bool isActive;

    struct  user  {
        string name;
        uint256 age;
    }



    user[5] public usersList;

    user public firstUser = user("mohammad", 10);

    function setNewUser(string calldata userName, uint256 userAge) public {
        
        
        usersList[0] = user(userName, userAge);


    }

    event ValueChanged(uint256 oldValue, uint256 newValue);

    function setNewValue(uint256 oldValue, uint256 newValue) public {
        emit ValueChanged(++oldValue, ++newValue);
    }

    mapping(uint256 => uint256) public balance;

    function getMap() public view returns (uint256) {
        return balance[0];
    }

    function getnSum(uint256 firstInput, uint256 secondInput)
        public
        pure
        returns (uint256)
    {
        return firstInput + secondInput;
    }

    function checkCount(int256 count) public pure returns (string memory) {
        if (count > 10) {
            return "salam ";
        } else {
            return "alykom";
        }
    }

    function loop(int256 base) public pure returns (int256) {
        require(base < 10, "salam");
        for (base; base < 5; base++) {
            base += base;
        }

        return base;
    }

    function getMessage() public view returns (string memory) {
        return message;
    }

    //classes

    // struct user {
    //     string name;
    //     uint256 age;
    // }

    // mapping(address => user) public userList;
}
