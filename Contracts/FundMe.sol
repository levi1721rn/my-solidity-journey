// get funds from users
//withdraw funds
//set a minimum funcding value in usd

//SPDX-Licence-Identifier : MIT

pragma solidity ^0.8.18;

contract FundMe {
        function fund() public payable {
            //allow users to send eth
            //have a minimum eth sent
            
            require(msg.value > 1e18 , "didn't send enough eth"); // 1e18 = 1 ETH = 1000000000000000000 wei = 1 * 10 ** 8 wei
        }

        //function withdraw() public {}
}