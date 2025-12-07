// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract mappingExample{
    mapping (address => uint) public balanceReceived;
    function setBalance()public payable{
        balanceReceived[msg.sender] += msg.value; 
    }    
    function getBalance() public view returns(uint){
        return address(this).balance;
    }
    function withdrawAllMoney(address payable _to) public {
        uint temp = balanceReceived[msg.sender];
        balanceReceived[msg.sender] = 0;
        _to.transfer(temp);
    }
}