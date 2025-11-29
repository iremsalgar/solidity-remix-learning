// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract BlockchainMessenger{
    string public message = 'hello world';
    address public owner;
    uint public counter;
    constructor(){
        owner = msg.sender;
    }
    function setAddress (address _someAdress) public {
        owner = _someAdress;
    }
    function updateMessage(string memory _message) public{
        if (msg.sender == owner){
            message = _message;
            counter++;
        }    
    } 
}