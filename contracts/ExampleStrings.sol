// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract ExampleString{
    string public myString = "hello world";
    bytes public a = "hello world";
    function setMyString(string memory _myString) public{
        myString = _myString;
    }

    function compareTwoString(string memory _myString) public view returns(bool) {
        if( keccak256(abi.encodePacked(myString)) == keccak256(abi.encodePacked(_myString)))
            return true;
        return false;
    }
}
