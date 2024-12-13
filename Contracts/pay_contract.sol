// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {PriceConverter} from "library/price_converter.sol";
 
 
 contract PayContract {
    using  PriceConverter for uint256;
    uint256 public balance;


address [ ] public  funders;
mapping (address funder => uint256 amount ) public fundersWithTotalAmount;
    function Fund() public payable {
        balance += msg.value;

        require(msg.value.getPriceInDollars() > 1e18, "Payment must be 1 dollar");
    
    funders.push(msg.sender);

    fundersWithTotalAmount[msg.sender] = fundersWithTotalAmount[msg.sender] +msg.value;

    
    }
}
