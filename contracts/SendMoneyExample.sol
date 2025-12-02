// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract sendMoney {
    uint public balanceReceived;
    function deposit() public payable {
        balanceReceived += msg.value;
    }
    function getContractBalance() public view returns(uint){
        return (address(this).balance);
    }
    function whitDrawAll() public {
        address payable to = payable(msg.sender);
        to.transfer(getContractBalance());
    }
    function whitDrawToAddress(address payable to)public {
        to.transfer(getContractBalance());
    }
}