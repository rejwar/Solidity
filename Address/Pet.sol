// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract AnimalRegistry {
    // State variables to store animal data
    string private animalName;
    string private animalBreed;
    uint256 private animalAge;
    string private owner;

    // Function to register an animal
    function registerAnimal(
        string memory _name,
        string memory _breed,
        uint256 _age,
        string memory _owner
    ) public {
        require(_age > 0, "Age must be greater than zero");

        // Store information in state variables
        animalName = _name;
        animalBreed = _breed;
        animalAge = _age;
        owner = _owner;
    }

    // Function to retrieve animal information
    function getAnimalDetails()
        public
        view
        returns (
            string memory name,
            string memory breed,
            uint256 age,
            string memory ownerName
        )
    {
        return (animalName, animalBreed, animalAge, owner);
    }
}
