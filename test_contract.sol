// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract HelloWorld {
    string  message;
    address  contractAddress;
    int256 numberNigative = -88;
    
    bytes32 public b= "some_message";
    string public name;
    bool public isActive;

    constructor() {
        message = "Hello world";
    b="heelo";
    isActive = true;
    }

    event ValueChanged(uint256 oldValue, uint256 newValue);

    function setNewValue(uint256 oldValue, uint256 newValue) internal {
        emit ValueChanged(++oldValue, ++newValue);
    }

    mapping(address => uint256) public balance;

    function setMap(address a, uint256 bh) public {
        balance[a] = bh;
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

    struct user {
        string name;
        uint256 age;
    }

    mapping(address => user) public userList;



        

    
}
