// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract PayContract {
    uint256 public balance;
    AggregatorV3Interface aggregator =
        AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);

    function getPriceOfEth(uint256 amount) public view returns (uint256) {
        //conversion rth rate  in 1e18
        (, int256 answer, , , ) = aggregator.latestRoundData();
        uint256 conversionRate = uint256(answer * 1e10);

        //price in dollars
        //conversion rate in eth is  1e18 / conversionRate
        uint256 price = (amount * conversionRate) / 1e18;

        return price;
    }

    function Fund() public payable {
        balance += msg.value;

        require(getPriceOfEth(msg.value) > 1e18, "Payment must be 1 dollar");
    }
}
