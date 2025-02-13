// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Proxy {
    address public target;

    constructor(address target_) {
        target = target_;
    }

    function updateTarget(address newTarget) external {
        target = newTarget;
    }

    fallback() external payable {
        (bool success, bytes memory data) = target.call{value: msg.value}(msg.data);
        
        assembly {
            if eq(success, 0) {
                revert(add(data, 0x20), mload(data))
            }
            return(add(data, 0x20), mload(data))
        }
    }
}
