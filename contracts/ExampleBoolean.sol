// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract ExampleBoolean {
    bool public myBool;
    function setMyBoolean(bool _myBool) public {
        myBool = _myBool;
    }
}