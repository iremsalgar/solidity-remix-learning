// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Samplefalback{
    uint public lastValueSend;
    string public lastfunctionCalled;
    uint public myUint;

    function setMyUnit(uint _newUint) public{
        myUint = _newUint;
    }

    receive() external payable { 
        lastValueSend = msg.value;
        lastfunctionCalled = "recive";
    }
    
    fallback() external payable {
        lastValueSend = msg.value;
        lastfunctionCalled = "fallback";
     }
}