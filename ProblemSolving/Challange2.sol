// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MemoryVault {
    struct Vault {
        bytes32 encryptedMessage;
        uint lockedAmount;
        uint releaseTime;
        address[] approvedUsers;
        address owner;
    }

    // Mappings
    mapping(address => mapping(uint => Vault)) public vaults;
    mapping(uint => address[]) public vaultApprovedUsers;
    mapping(address => uint) public vaultCount;

    // Events
    event VaultCreated(address indexed owner, uint vaultId, uint releaseTime);
    event UserAdded(address indexed owner, uint vaultId, address user);
    event UserRemoved(address indexed owner, uint vaultId, address user);
    event VaultAccessed(address indexed user, uint vaultId, string status);

    // Modifiers
    modifier onlyVaultOwner(uint vaultId) {
        require(msg.sender == vaults[msg.sender][vaultId].owner, "Access denied: Not the vault owner");
        _;
    }

    modifier onlyAfterRelease(address ownerAddress, uint vaultId) {
        require(block.timestamp >= vaults[ownerAddress][vaultId].releaseTime, "Vault is still locked");
        _;
    }

    modifier onlyAuthorizedUser(address ownerAddress, uint vaultId) {
        bool isAuthorized = false;
        for (uint i = 0; i < vaults[ownerAddress][vaultId].approvedUsers.length; i++) {
            if (vaults[ownerAddress][vaultId].approvedUsers[i] == msg.sender) {
                isAuthorized = true;
                break;
            }
        }
        require(isAuthorized, "Access denied: User not authorized");
        _;
    }

    // Function to create a new vault
    function createVault(bytes32 _encryptedMessage, uint _releaseTime) public payable returns (uint) {
        uint vaultId = vaultCount[msg.sender];
        Vault storage newVault = vaults[msg.sender][vaultId];

        newVault.encryptedMessage = _encryptedMessage;
        newVault.lockedAmount = msg.value;
        newVault.releaseTime = _releaseTime;
        newVault.owner = msg.sender;

        vaultCount[msg.sender]++;

        emit VaultCreated(msg.sender, vaultId, _releaseTime);
        return vaultId;
    }

    // Function to add an authorized user
    function authorizeUser(uint vaultId, address user) public onlyVaultOwner(vaultId) {
        vaults[msg.sender][vaultId].approvedUsers.push(user);
        emit UserAdded(msg.sender, vaultId, user);
    }

    // Function to remove an authorized user
    function revokeUser(uint vaultId, address user) public onlyVaultOwner(vaultId) {
        address[] storage approvedUsers = vaults[msg.sender][vaultId].approvedUsers;
        for (uint i = 0; i < approvedUsers.length; i++) {
            if (approvedUsers[i] == user) {
                approvedUsers[i] = approvedUsers[approvedUsers.length - 1];
                approvedUsers.pop();
                emit UserRemoved(msg.sender, vaultId, user);
                break;
            }
        }
    }

    // Function to unlock and access a vault
    function accessVault(address ownerAddress, uint vaultId)
        public
        onlyAfterRelease(ownerAddress, vaultId)
        onlyAuthorizedUser(ownerAddress, vaultId)
        returns (bytes32)
    {
        Vault storage selectedVault = vaults[ownerAddress][vaultId];
        emit VaultAccessed(msg.sender, vaultId, "Access successful");
        return selectedVault.encryptedMessage;
    }
}
