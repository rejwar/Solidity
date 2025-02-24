// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OrderStatusEnum {
    enum Status { Pending, Shipped, Delivered, Canceled }  // Enum ঘোষণা

    Status public OrderStatus;  // ডিফল্ট মান `Pending`

    function SetStatus(Status NewStatus) public {
        OrderStatus = NewStatus;  // নতুন স্ট্যাটাস সেট করা হচ্ছে
    }

    function GetStatus() public view returns (Status) {
        return OrderStatus;  // বর্তমান স্ট্যাটাস রিটার্ন করবে
    }
}
