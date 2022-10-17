// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.9;
import "./Animal.sol";

contract Happypig is Animal {
    enum Activity {
        Run,
        Sleep
    }

    mapping(string => uint) menus;

    constructor(string memory _name) {
        name = _name;

        menus["banana"] = 10;
        menus["apple"] = 15;
        menus["milk"] = 20;
    }

    function activity(Activity _act) public {
        if (_act == Activity.Sleep) {
            energy += 1;
        } else if (_act == Activity.Run) {
            energy -= 2;
        }
    }

    function dead() public view returns (string memory) {
        if (energy == 0) {
            return "dead";
        } else {
            return "alive";
        }
    }

    function specialFood(string memory _menu) public {
        uint specialEnergy = menus[_menu];
        energy += specialEnergy;
    }
}
