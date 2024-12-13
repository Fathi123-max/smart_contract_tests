// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract PayContract {
    


    function Fund () public payable  {
        

        require(msg.value > 10 gwei, "Payment must be 10 euros");

    }


}
