# Homework 4

1. What are the advantages and disadvantages of the 256 bit word length of the 
EVM?
Some of the disadvantages are that working with 256 bit integers is 
significantly more **complex** and **slow** than working with an integer 
length natively supported by the processor.

On the upside, having this space available makes it easier to work with 
big values derived from crypto computations. Having smaller sizes also 
restricts working with addresses.

2. What would happen if the implementation of a precompiled contract varied 
between Ethereum clients?
The smart contract could behave erratically and not compile correctly.

3. Using Remix write a simple contract that uses a memory variable, then 
using the debugger step through the function and inspect memory:
```bash
//SPDX-License-Identifier: UNLICENSED

solidity ^0.8.20;

contract SimpleContract {
    string firstName;

    function setFirstName() public pure returns(string memory _firstName) {
        return "Daniel";
    }
}
```
