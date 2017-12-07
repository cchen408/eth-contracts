pragma solidity ^0.4.0;

contract add {
  uint public c;

  function Add(uint a, uint b) public {
    c = a + b;
  }

  function returnAdd() public constant returns (uint){
    return c;
  }
}