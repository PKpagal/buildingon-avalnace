# DegenToken (DGN)

DegenToken (DGN) is an ERC20 token built with Solidity, allowing minting, redeeming, burning, and transferring tokens.

## Features
- **Minting:** Owner can mint tokens.
- **Redeeming:** Users can redeem tokens for rewards.
- **Burning:** Users can burn their tokens.
- **Transfers:** Standard ERC20 token transfers.

## Installation
1. Clone the repository.
2. Install dependencies: `npm install`.
3. Compile: `npx hardhat compile`.
4. Deploy: `npx hardhat run scripts/deploy.js --network <network-name>`.

## Usage
- **Mint tokens:** `mint(address recipient, uint256 amount)`
- **Redeem tokens:** `redeem(uint rewardTier)`
- **Burn tokens:** `burn(uint256 amount)`
- **Check balance:** `getBalance()`

## License
This project is licensed under the MIT License.

#Author
Name:Prince Kumar
gmail:kumarprincerajput124@gmail.com
