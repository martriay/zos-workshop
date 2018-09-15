pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC721/ERC721.sol";
import "zos-lib/contracts/migrations/Initializable.sol";


contract UpgradeableWalletV2 is Initializable {
    address _owner;
    
    function initialize(address owner) isInitializer public {
        _owner = owner;
    }

    function owner() public view returns (address) {
        return _owner;
    }
    
    function ERC20_transfer(ERC20 token, address to, uint256 amount) public returns (bool) {
        require(token.transfer(to, amount));
    }

    function ERC721_transferFrom(ERC721 token, address to, uint256 tokenId) public {
        token.transferFrom(this, to, tokenId);
    }
}
