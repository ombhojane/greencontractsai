// Eco-Friendly Smart Contract
pragma solidity ^0.8.0;

contract EcoFriendlyContract {
    uint256 public totalSupply;
    mapping(address => uint256) public balances;

    constructor(uint256 _initialSupply) {
        totalSupply = _initialSupply;
        balances[msg.sender] = _initialSupply;
    }

    function transfer(address _to, uint256 _amount) public {
        require(balances[msg.sender] >= _amount, "Insufficient balance");
        balances[msg.sender] -= _amount;
        balances[_to] += _amount;
    }
}
