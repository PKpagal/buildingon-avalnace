// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {

    // Constructor initializing token name, symbol, and the owner
    constructor(address initialOwner) ERC20("Degen", "DGN") Ownable(initialOwner) {
        // No need to call transferOwnership here, it's already set in Ownable
    }

    // Events to log token activities
    event TokensRedeemed(address indexed account, uint rewardTier);
    event TokensBurned(address indexed account, uint amountBurned);
    event TokensTransferred(address indexed from, address indexed to, uint amountTransferred);

    // String representing available items and their cost
    string public items = "1. DEGEN NFT: 1000 DGN  2. DEGEN T-shirt: 50 DGN  3. DEGEN Treasure Chest: 100 DGN";

    // Mappings to track redeemed items
    mapping(address => uint) public nftBalance;
    mapping(address => uint) public tshirtBalance;
    mapping(address => uint) public chestBalance;

    // Mint new tokens to the specified address, only callable by the contract owner
    function mint(address recipient, uint256 amountToMint) public onlyOwner {
        _mint(recipient, amountToMint);
    }

    // Returns the balance of the caller (msg.sender)
    function getBalance() public view returns (uint256) {
        return balanceOf(msg.sender);
    }

    // Redeem tokens based on the reward tier, requires sufficient balance
    function redeem(uint rewardTier) public {
        uint256 requiredAmount = rewardTier * 10;
        require(balanceOf(msg.sender) >= requiredAmount, "Insufficient balance to redeem tokens");
        burn(requiredAmount);
        emit TokensRedeemed(msg.sender, rewardTier);
    }

    // Burn a specified amount of tokens from the caller's balance
    function burn(uint256 amountToBurn) public {
        _burn(msg.sender, amountToBurn);
        emit TokensBurned(msg.sender, amountToBurn);
    }

    // Redeem items (NFT, T-shirt, Treasure Chest) by burning tokens
    function RedeemToken(uint choice) public {
        require(choice >= 1 && choice <= 3, "Invalid choice. Choose an item from the list");

        if (choice == 1) {
            require(balanceOf(msg.sender) >= 10, "Insufficient balance to redeem NFT");
            _burn(msg.sender, 10);
            nftBalance[msg.sender] += 1;  
        }
        else if (choice == 2) {
            require(balanceOf(msg.sender) >= 50, "Insufficient balance to redeem T-shirt");
            _burn(msg.sender, 50);
            tshirtBalance[msg.sender] += 1;  
        }
        else if (choice == 3) {
            require(balanceOf(msg.sender) >= 100, "Insufficient balance to redeem Treasure Chest");
            _burn(msg.sender, 100);
            chestBalance[msg.sender] += 1;  
        }
    }
}
