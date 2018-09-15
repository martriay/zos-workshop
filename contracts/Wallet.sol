pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";


contract Wallet {
    address _owner;
    
    constructor(address owner) public {
        _owner = owner;
    }
    
    function ERC20_transfer(ERC20 token, address to, uint256 amount) public returns (bool) {
        require(token.transfer(to, amount));
    }
}