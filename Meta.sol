// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    // Public variables
    string public tokenName = "META Crafters";
    string public tokenAbbrv = "MTA";
    uint256 public totalSupply = 0;

    // Mapping variable
    mapping(address => uint256) public balances;

    // Mint function
    function mint(address _address, uint256 _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // Burn function
    function burn(address _address, uint256 _value) public {
        require(balances[_address] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[_address] -= _value;
    }
}
