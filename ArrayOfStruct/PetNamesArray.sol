// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PetNames{
    struct Pet{
            string Name;
    }

    Pet[] public Pets;

    function AddPet(string memory Name_) public {
        Pets.push(Pet(Name_));
    }
}cannot encode empty arguments
