// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Animal {
    string name;
    uint energy = 0;

    enum foodType {
        Food,
        Water,
        Other
    }

    string status;

    uint timestamp = block.timestamp + 10 seconds;
    uint bonusTime;

    function getName() public view returns (string memory) {
        return name;
    }

    function setName(string memory _name) public {
        name = _name;
    }

    function setBonusTime(uint _time) public {
        bonusTime = _time;
    }

    function setFood(foodType _type) public {
        if (_type == foodType.Food) {
            energy += 2;
        } else if (_type == foodType.Water) {
            energy += 1;
        } else if (_type == foodType.Other) {
            energy += 5;
        }
    }

    function getEnergy() public view returns (uint) {
        return energy;
    }

    function getStatus() public view returns (string memory) {
        if (energy >= 20) {
            return "happy";
        } else if (energy >= 10) {
            return "normal";
        } else {
            return "bad";
        }
    }

    modifier isBonus() {
        require(block.timestamp > timestamp, "Bonus Timeout");
        _;
    }
}
