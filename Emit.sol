/*
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventTest{
    event transfer(address indexed _from , address indexed _to, uint amount);

    function transferTO(address _from , address indexed _to uint amount) public {
        emit transfer(_from, _to, amount);
    }
}


*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventTest {
    // Event declaration
    event TransferEvent(address indexed _from, address indexed _to, uint amount);

    // Function to emit the event
    function transferTO(address _from, address _to, uint amount) public {
        emit TransferEvent(_from, _to, amount);
    }
}

