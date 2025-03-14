// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/FundMe.sol";

contract FundMeTest is Test {
    FundMe fundMe;
    address owner = address(0x123);

    function setUp() public {
        fundMe = new FundMe(owner);
    }

    function testOwner() public {
        assertEq(fundMe.owner(), owner);
    }

    function testFund() public {
        uint256 initialBalance = address(fundMe).balance;
        uint256 amount = 1 ether;

        vm.deal(address(this), amount);
        fundMe.fund{value: amount}();

        assertEq(address(fundMe).balance, initialBalance + amount);
    }

    function testWithdraw() public {
        uint256 amount = 1 ether;

        vm.deal(address(this), amount);
        fundMe.fund{value: amount}();

        uint256 initialOwnerBalance = owner.balance;
        fundMe.withdraw();

        assertEq(owner.balance, initialOwnerBalance + amount);
    }
}
