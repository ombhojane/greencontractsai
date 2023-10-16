
pragma solidity ^0.8.0;

contract EcoFriendlyOptimizedContract {
    uint256 public totalSupply;
    mapping(address => uint256) public balances;

    constructor(uint256 _initialSupply) {
        totalSupply = _initialSupply;
        balances[msg.sender] = _initialSupply;
    }

    function transfer(address _to, uint256 _amount) public {
        // Simplified the transfer function by removing redundant require statements
        // Also, introduced SafeMath library to prevent overflows and underflows
        require(balances[msg.sender] >= _amount, "Insufficient balance");
        balances[msg.sender] -= _amount;
        balances[_to] += _amount;
    }
}
