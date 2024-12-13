
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";




library PriceConverter {
        function getPriceInDollars(uint256 amount) internal  view returns (uint256) {
        //conversion rth rate  in 1e18
        (, int256 answer, , , ) = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).latestRoundData();
        uint256 conversionRate = uint256(answer * 1e10);

        //price in dollars
        //conversion rate in eth is  1e18 / conversionRate
        uint256 price = (amount * conversionRate) / 1e18;

        return price;
    }


}
