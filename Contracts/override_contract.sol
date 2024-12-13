// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {HelloContract} from "Contracts/simple_contract.sol";



contract OverContract is HelloContract {




function showUserAge (uint256 index )public override  view    returns  ( uint256)  {

 return usersList[index].age +5 ;
}





}

