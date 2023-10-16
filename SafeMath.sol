// SafeMath Library
pragma solidity ^0.8.0;

library SafeMath {
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        require(a + b >= a, "SafeMath: addition overflow");
        return a + b;
    }

    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(a >= b, "SafeMath: subtraction overflow");
        return a - b;
    }
}
