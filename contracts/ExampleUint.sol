// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract ExaplempleUnit {
    uint256 public myUint; // 0 - (2^256)-1
    uint8 public myUint8 = 250; //maks255 
    int public myInt = -10;
    function setMyUint (uint _myUint) public {
        myUint = _myUint;
    }
    function increementUnit8() public {
        myUint8++;
    }
    function decrementUint() public{
        myUint--;
    }
    function incrementInt() public{
        myInt++;
    }
}