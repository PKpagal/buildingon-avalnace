# DegenToken (DGN)

DegenToken is an ERC20 token with additional functionality for minting, redeeming, and burning tokens. This contract is built using OpenZeppelin's libraries for ERC20 and Ownable.

## Features
- **Minting:** Only the owner can mint tokens to any address.
- **Burning:** Users can burn their own tokens.
- **Redeeming:** Users can redeem tokens based on reward tiers.
- **Standard ERC20 Transfers:** Token transfers follow the ERC20 standard.

## Smart Contract Overview
- **Name:** DegenToken
- **Symbol:** DGN
- **Solidity Version:** ^0.8.18

## Functions
- `mint(address recipient, uint256 amountToMint)`: Mints tokens to the specified address. Only callable by the owner.
- `getBalance()`: Returns the caller’s token balance.
- `redeem(uint rewardTier)`: Redeems tokens based on the reward tier.
- `burn(uint256 amountToBurn)`: Burns a specified number of tokens from the caller’s balance.



## License
This project is licensed under the MIT License.

#author
Name:Prince Kumar
gmail:kumarprincerajput124@gmail.com
