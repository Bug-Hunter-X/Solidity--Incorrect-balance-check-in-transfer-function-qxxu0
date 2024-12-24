# Solidity Bug: Incorrect Balance Check

This repository demonstrates a common error in Solidity smart contracts: incorrect usage of mappings for balance tracking in a token transfer function. The `balanceOf` function incorrectly accesses a non-existent variable `balances`, instead of the correctly defined `balanceOf` mapping.

## Bug Description

The `transfer` function attempts to check the sender's balance using `balanceOf[msg.sender]`. However, the `balanceOf` function itself has a bug: it returns `balances[account]`, which is not declared.  This leads to unexpected behavior and potential vulnerabilities.

## Bug Solution

The solution corrects the `balanceOf` function to correctly access the `balanceOf` mapping.