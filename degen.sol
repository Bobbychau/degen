
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {
    constructor() ERC20("Degen", "DGN") Ownable(msg.sender) {}

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    function checkBalance() external view returns (uint256) {
        return balanceOf(msg.sender);
    }

    function transferTokens(address receiver, uint256 amount) external {
        require(amount > 0, "Amount must be greater than zero");
        require(balanceOf(msg.sender) >= amount, "Insufficient Degen Tokens");
        _transfer(msg.sender, receiver, amount);
    }

    function burnTokens(uint256 amount) external {
        require(amount > 0, "Amount must be greater than zero");
        _burn(msg.sender, amount);
    }

    function displayNFTItems() external pure returns (string memory, string memory, string memory) {
        return ("Degen T-shirt", "Degen Bag", "Degen watch");
    }

    function buyNFTItem(uint256 itemNumber) external {
        require(itemNumber >= 0 && itemNumber <= 2, "Invalid item number");

        uint256 cost;

        if (itemNumber == 0) {
            cost = 50;
        } else if (itemNumber == 1) {
            cost = 100;
        } else if (itemNumber == 2) {
            cost = 200;
        } else {
            revert("Invalid item number");
        }

        require(balanceOf(msg.sender) >= cost, "Insufficient Degen Tokens to buy the item");

        _burn(msg.sender, cost);
    }
}
