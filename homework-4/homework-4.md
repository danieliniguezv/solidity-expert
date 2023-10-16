# Homework 4

1. Using [Sol 2 UML](https://github.com/naddison36/sol2uml) determine how many storage slots this contract is using. 
If the variables are reordered can the number of storage slots be reduced?

```bash
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Store {

    struct payments {
        bool valid;
        uint256 amount;
        address sender;
        uint8 paymentType;
        uint256 finalAmount;
        address receiver;
        uint256 initialAmount;
        bool checked;
    }
    uint8 index;
    uint256 public number;
    bool flag1;
    address admin;
    mapping (address=>uint256) balances;
    bool flag2;
    address admin2;
    bool flag3;
    payments[8] topPayments;


    constructor(){

    }


    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
```

2. Install [Foundry](https://book.getfoundry.sh/) and create a new project. Run the tests supplied.

3. Using Foundry create a new project and fork the mainnet. Using the command 
line retrieve a property such as the latest block number.

4. Is this valid Solidity?

```bash
//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.20;

contract ValidContract {
    function a(
        function(
            function(
                function(
                    function(
                        function(
                            function(
                                function(
                                    function(
                                        function() external pure
                                    ) external pure
                                ) external pure
                            ) external pure
                        ) external pure
                    ) external pure
                ) external pure
            ) external pure
        ) external pure
    ) external pure {}
}
```

Yes.
