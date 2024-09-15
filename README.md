# buildingon-avalnace


# ERC20 Token Smart Contract

This project contains a Solidity smart contract implementing the ERC20 standard for fungible tokens, built using OpenZeppelin's contract library.

## Overview

This ERC20 token contract allows users to:
- Transfer tokens to other addresses.
- Approve third-party addresses to spend tokens on their behalf.
- Mint and burn tokens, altering the total supply.
- Check token balances, allowances, and total supply.

### Key Features
- **Compliant with ERC20 Standard**: Ensures compatibility with existing wallets and decentralized applications (DApps) that support ERC20 tokens.
- **OpenZeppelin Libraries**: Leverages well-tested, secure implementations from OpenZeppelin, minimizing risk and saving development time.
- **Custom Minting and Burning Logic**: Can be customized to support additional features like token airdrops, deflationary models, or governance.

## Functions

- `name()`: Returns the name of the token.
- `symbol()`: Returns the symbol of the token.
- `decimals()`: Returns the number of decimals (18 by default).
- `totalSupply()`: Returns the total number of tokens in circulation.
- `balanceOf(address account)`: Returns the token balance of a specified address.
- `transfer(address to, uint256 value)`: Transfers tokens to another address.
- `allowance(address owner, address spender)`: Returns the remaining amount of tokens that a spender is allowed to transfer on behalf of the owner.
- `approve(address spender, uint256 value)`: Allows a spender to transfer a specified amount of tokens on behalf of the owner.
- `transferFrom(address from, address to, uint256 value)`: Transfers tokens from one address to another, using the approved allowance.
- `_mint(address account, uint256 value)`: Mints new tokens, increasing the total supply.
- `_burn(address account, uint256 value)`: Burns tokens, decreasing the total supply.

## Usage

1. **Install Dependencies**:
   Make sure you have the OpenZeppelin library installed in your project:

2. **Deploying the Contract**:
Use tools like Remix, Hardhat, or Truffle to deploy the contract on an Ethereum-compatible blockchain.

3. **Interacting with the Contract**:
After deployment, you can interact with the contract using wallets like MetaMask or through DApps that support ERC20 tokens.

## License

This project is licensed under the MIT License.

## Contact

For any inquiries, feel free to reach out to:

**Prince Kumar**  
Email: [kumarprincerajput124@gmail.com]
