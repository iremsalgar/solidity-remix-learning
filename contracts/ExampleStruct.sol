// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Wallet{
    PaymentReceived public payment;
    function payContract() public payable{
        payment = new PaymentReceived(msg.sender, msg.value);
    }
}

contract PaymentReceived{
    address public from;
    uint public amount;

    constructor (address _from, uint _amount){
        from = _from;
        amount = _amount;
    }
}

contract Wallet2 {
    struct paymentReceivedStruct{
        address from;
        uint amount;
        uint balance;
    }

    paymentReceivedStruct public payment;
    function payContract() public payable  {
        //payment = paymentReceivedStruct(msg.sender, msg.value);
        payment.from = msg.sender;
        payment.amount = msg.value;
        payment.balance += msg.value;
    }
}