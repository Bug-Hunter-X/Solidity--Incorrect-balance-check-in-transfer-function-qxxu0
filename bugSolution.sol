```solidity
function transfer(address to, uint amount) public {
  require(balanceOf[msg.sender] >= amount, "Insufficient balance");
  balanceOf[msg.sender] -= amount;
  balanceOf[to] += amount;
  emit Transfer(msg.sender, to, amount);
}

// ... other functions

function balanceOf(address account) public view returns (uint) {
  return balanceOf[account]; // Correctly uses the balanceOf mapping
}
```