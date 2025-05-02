// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleStorage {
    // Basic types: boolean, int, uint, address, bytes
    uint256 myFavoriteNumber;

    // array type: bytes32[], uint256[]
    // uint256[] listsOfFavoriteNumbers;

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    // 
    // Person public emefa = Person({favoriteNumber: 100, name: "Emefa"});

    Person[] public people;

    // modifier: allows you to call a method before or after another method
    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // view, pure: to read states from the blockchain
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }


    // Calldata, Memory, Storage
    // calldata and memory means that this variable _name is going to exist temporary
    // memory can be manipulated but calldata cannot
    function addPerson(string memory _name , uint256 _favoriteNumber ) public {
        people.push(Person({ favoriteNumber: _favoriteNumber, name: _name}));
    }

}