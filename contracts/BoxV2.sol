// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.18;

import {Box} from "./Box.sol";

/// @title BoxV2
/// @notice An improved box with objects inside.
contract BoxV2 is Box {
    /*//////////////////////////////////////////////////////////////
                                FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Add an object to the box.
    function addObject() external {
        numberOfObjects += 1;
    }

    /// @notice Returns the box version.
    function boxVersion() external pure returns (uint256) {
        return 2;
    }

    function reentrantFunction(address target) external payable {
        (bool success, ) = target.call{value: msg.value}("");
        require(success, "Call failed");
        numberOfObjects -= 1;
    }
}
