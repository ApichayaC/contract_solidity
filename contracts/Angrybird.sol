// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.9;
import "./Animal.sol";

contract Angrybird is Animal {
    enum Activity {
        Jump,
        Sleep
    }

    constructor(string memory _name) {
        name = _name;
    }

    function activity(Activity _act) public {
        if (_act == Activity.Sleep) {
            energy += 1;
        } else if (_act == Activity.Jump) {
            energy -= 1;
        }
    }

    function dead() public view returns (string memory) {
        if (energy < 1) {
            return "dead";
        } else {
            return "alive";
        }
    }

    function getBonus() public isBonus returns (uint) {
        return energy += 10;
    }
}
