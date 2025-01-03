// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import  "../core/UserOperationLib.sol";

// interface for modules to verify singatures signed over userOpHash
interface IAuthorizationModule {
    function validateUserOp(
        PackedUserOperation calldata userOp,
        bytes32 userOpHash
    ) external returns (uint256 validationData);
}
