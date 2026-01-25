//SPDX-LICENSE-Identifier: MIT
pragma solidity 0.8.24;  //stating our version 

contract SimpleStorage{
    /* 
        
         int256 is same as int
        uint256 is same a unit 
        bytes32 is the same as bytes
        int256 variable_name;
        this variable_name initializes to zero if no value is specified
        i.e
        int256 variable_name; is the same as
        int256 variable_name = 0;


    */
     uint256 public myFavouriteNumber;  //0

      function store(uint256 newFavouriteNumber) public virtual{
        myFavouriteNumber = newFavouriteNumber;
     }
     
     // view and pure are functions we can call without having to send a transaction
     //example for view function

     function retrieve() public view returns(uint256){
        return myFavouriteNumber;
     }

     struct Person {
      uint256 favouriteNumber;
      string name;
     }
      
     //Dynamic Array 
     Person[] public listOfPerson;

   //   Person public pat = Person(10 , "Pat");

   //   Person public ms = Person({favouriteNumber : 7 , name : "MS"});

     mapping(string => uint256) public nameToFavouriteNumber;

     function addPerson(string memory _name , uint256 _favouriteNumber) public {
      listOfPerson.push(Person(_favouriteNumber , _name));
      nameToFavouriteNumber[_name] = _favouriteNumber;
     }
}