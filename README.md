# DegenToken

DegenToken is an ERC20 token smart contract implemented in Solidity. This contract provides functionalities for minting, transferring, burning tokens, as well as purchasing NFT items with the token. It inherits from ERC20, Ownable, and ERC20Burnable contracts from the OpenZeppelin library.

## Features

- **Minting**: The contract allows the owner to mint new Degen tokens and transfer them to a specified address.
- **Token Transfer**: Users can transfer Degen tokens to other addresses.
- **Token Burning**: Users can burn a specific amount of Degen tokens, reducing the total supply.
- **Check Balance**: Users can check their Degen token balance.
- **NFT Items**: The contract provides a list of NFT items (Degen T-shirt, Degen Bag, Degen watch) and allows users to purchase them with Degen tokens.

## Functions

- `mint(address to, uint256 amount)`: Mint new Degen tokens and transfer them to the specified address. Only the owner can call this function.
- `checkBalance() external view returns (uint256)`: View function to check the balance of Degen tokens for the caller.
- `transferTokens(address receiver, uint256 amount)`: Transfer Degen tokens to the specified receiver.
- `burnTokens(uint256 amount)`: Burn a specific amount of Degen tokens.
- `displayNFTItems() external pure returns (string memory, string memory, string memory)`: Display the available NFT items.
- `buyNFTItem(uint256 itemNumber) external`: Purchase an NFT item by providing the item number. Costs are predefined for each item.

## Requirements

- Solidity 0.8.9
- OpenZeppelin Contracts v4.4.0

## License

This smart contract is licensed under the MIT License.

