pragma solidity ^0.4.16;

contract MyToken {

  /* This creates an array with all balances */
  mapping (address => uint256) public balanceOf;

  // Create some tokens
  function MyToken() {
    balanceOf[msg.sender] = 21000000;
  }

  function transfer(address _to, uint256 _value) {
    /* Check if sender has balance and for overflows */
    require(balanceOf[msg.sender] >= _value && balanceOf[_to] + _value >= balanceOf[_to]);

    /* Add and subtract new balances */
    balanceOf[msg.sender] -= _value;
    balanceOf[_to] += _value;
  }

}