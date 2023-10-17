//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.19;

import {Test} from 'forge-std/Test.sol';
import {BlockNumber} from 'src/BlockNumber.sol';

contract BlockNumberTest is Test {
	BlockNumber public number;

	function setUp() public {
		number = new BlockNumber();
	}

	function test_getBlockNumber() public {
		uint256 _number = number.getBlockNumber();
		assertEq(_number, block.number);
	}
}
