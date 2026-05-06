// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title BALMZToken
 * @dev BALMZ Token - World Invisible Individual Explorer
 * 
 * An ERC-20 token representing the identity of a public token explorer
 * on the blockchain ecosystem with advanced features like burning, pausing,
 * and minting capabilities.
 */
contract BALMZToken is
    ERC20,
    ERC20Burnable,
    ERC20Pausable,
    ERC20Permit,
    ERC20Votes,
    Ownable
{
    // Token configuration constants
    uint256 public constant INITIAL_SUPPLY = 1_000_000 * 10 ** 18; // 1 million tokens with 18 decimals

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor()
        ERC20("BALMZ Token", "BALMZ")
        ERC20Permit("BALMZ Token")
        Ownable(msg.sender)
    {
        _mint(msg.sender, INITIAL_SUPPLY);
    }

    /**
     * @dev Pause all token transfers.
     * Only the owner can call this function.
     */
    function pause() public onlyOwner {
        _pause();
    }

    /**
     * @dev Unpause all token transfers.
     * Only the owner can call this function.
     */
    function unpause() public onlyOwner {
        _unpause();
    }

    /**
     * @dev Mint new tokens.
     * Only the owner can call this function.
     * 
     * @param to The address to mint tokens to
     * @param amount The amount of tokens to mint
     */
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    /**
     * @dev Internal function to update the token votes.
     */
    function _update(
        address from,
        address to,
        uint256 amount
    ) internal override(ERC20, ERC20Pausable, ERC20Votes) {
        super._update(from, to, amount);
    }

    /**
     * @dev Internal function for nonces.
     */
    function nonces(address owner)
        public
        view
        override(ERC20Permit, Nonces)
        returns (uint256)
    {
        return super.nonces(owner);
    }
}
