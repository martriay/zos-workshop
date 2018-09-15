pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "zos-lib/contracts/migrations/Initializable.sol";


contract UpgradeableWallet is Initializable {
    address _owner;
    
    function initializer(address owner) isInitializer public {
        _owner = owner;
    }
    
    function ERC20_transfer(ERC20 token, address to, uint256 amount) public returns (bool) {
        require(token.transfer(to, amount));
    }
}