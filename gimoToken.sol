// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract gimoToken is ERC20 {

  address private admin;
  
  constructor(string memory tokenName, string memory tokenSymbol, uint256 totalToken) ERC20(tokenName, tokenSymbol) {
     _mint(msg.sender, totalToken);
        admin = msg.sender;
    }

  modifier onlyAdmin() {
        require(msg.sender == admin, "Access restricted to admin");
        _;
    }

  function generateTokens(address recipient, uint256 amount) external onlyAdmin {
        _mint(recipient, amount);
    }

  function burnTokens(uint256 amount) external {
        _burn(msg.sender, amount);
    }

  function transfer(address recipient, uint256 amount) public override returns (bool) {
        require(recipient != address(0), "Invalid recipient address");
        _transfer(msg.sender, recipient, amount);
        return true;
    }

  function transferFrom(address sender, address recipient, uint256 amount) public override returns (bool) {
        require(recipient != address(0), "Invalid recipient address");
        _transfer(sender, recipient, amount);
        _approve(sender, msg.sender, allowance(sender, msg.sender) - amount);
        return true;
    }
}
