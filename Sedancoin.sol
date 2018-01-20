pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Sedancoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Sedancoin(address _owner)  UpgradeableToken(_owner) {
    name = "Sedancoin";
    symbol = "SDC";
    totalSupply = 10000000000000000000000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}