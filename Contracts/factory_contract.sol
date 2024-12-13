// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {HelloContract} from "Contracts/simple_contract.sol";

contract HelloFactoryContract {
    address[] listOfHelloAdressesContracts;

    function createNewHelloContract() public {
        listOfHelloAdressesContracts.push(address(new HelloContract()));
    }

    function addNewUserInHelloContract(
        uint256 contractIndex,
        string memory name,
        uint256 useAge
    ) public {
        HelloContract userContract = HelloContract(
            listOfHelloAdressesContracts[contractIndex]
        );

        userContract.setNewUser(name, useAge);
    }

function showlist() public view returns (uint256) {

    return listOfHelloAdressesContracts.length;
    
}
    function showUserAge( uint256 contractIndex )public   view returns (uint256) {
        HelloContract userContract = HelloContract(
            listOfHelloAdressesContracts[contractIndex]
        );

    return  userContract.showUserAge(contractIndex);

    }


}
