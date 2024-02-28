// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract store{
    uint256 number;

    struct Users {
        uint256 uNumber;
        string user;
    }

    Users[] public usersList;
    mapping(string => uint256) public stringToNumber;

    function storeNumber(uint _number) public {
        number = _number;
    }

    function getNumber() public view returns(uint256) {
        return number;
    }

    function addUser(string memory _name, uint256 _number) public {
        usersList.push(Users(_number, _name));
        stringToNumber[_name] = _number;
    }
}