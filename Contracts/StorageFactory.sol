//  SPDX-LICENCE_IDENTIFIER: MIT

pragma solidity ^0.8.24;

//SPDX-LICENSE-Identifier: MIT
pragma solidity 0.8.24;  //stating our version 

import {SimpleStorage} from "./SimpleStorage.sol";


contract storageFactory{
        
        //uint256 public favouriteNumber
        //type visibility name
        SimpleStorage[] public listOfSimpleStorageContracts;

        function createSimpleStorageContract() public {
            SimpleStorage newSimpleStorageContract = new SimpleStorage();
            listOfSimpleStorageContracts.push(newSimpleStorageContract);
        }

        function sfStore(uint256 _simpleStorageIndex , uint256 _newSimpleStorageNumber) public {
            //Address
            //ABI - Application Binary Index
            return  listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
        }

        function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){
            return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
        }
     
}