// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingwithEmun{
    enum Status { Pending , Shipped , Delivered}

    mapping (uint => Status) public OrderStatus;

    function UpdateOrderStatus (uint OrderId_, Status Status_ ) public {
        OrderStatus[OrderId_] = Status_;
    }

    function GetOrderStatus(uint OrderId_) public view returns(Status){
        return  OrderStatus[OrderId_];
    }
}
