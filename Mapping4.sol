// SPDX-License-Identifier: MIT
pragma solidity^ 0.8.0;
contract UserRecords{

    struct  user{
        string name;
        uint256 balance;
}

mapping (address => User) public users;

function addUser (string memory _name, uint256 _balance) public {
    users[msg.sender] = user(_name , _balance);

}

function getUser(address _user ) public  view returns (string memory , uint256)
{
    User memory user = users[_user];
    return (user.name , user.balance);
}

}
