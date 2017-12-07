pragma solidity ^0.4.0;

contract SimpleStorage {
  uint myVariable;

  event Odd();

  event Even();

  function set(uint x) {
    myVariable = x;
    if (x % 2 == 0) {
      Odd();
    } else {
      Even();
    }
  }

  function get() constant returns (uint) {
    return myVariable;
  }
}