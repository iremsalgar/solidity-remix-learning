// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract ExampleMapping{
    mapping (uint => bool) public myMapping;
    mapping (address => bool) public myAddressMapping;
    mapping (uint => mapping (uint => bool)) public unitBoolMap;
    function setValue(uint _index) public {
        myMapping[_index] = true;
    }
    function setMyAdressToTrue() public{
        myAddressMapping[msg.sender] = true; //set eden mesaj gönderen adres  true
    }
    function setUintAdress(uint _key1, uint _key2, bool _value) public {
        unitBoolMap[_key1][_key2]  = _value;
    }
}