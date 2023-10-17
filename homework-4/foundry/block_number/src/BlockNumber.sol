//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.19;

contract BlockNumber {
	function getBlockNumber() public view returns(uint256 _blockNumber) {
		return block.number;
	}
}
