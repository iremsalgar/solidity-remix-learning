// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract SampleContract{
    string public myString = 'hello worls';
    function updateString(string memory _newString) public payable {
        if(msg.value == 1 ether){
            //1 ETH gönderirsen “güncelleme yap”
            myString = _newString;
        }   
        else{
            //1 ETH’den farklı miktar gönderirsen “paranı geri gönder”
            payable(msg.sender).transfer(msg.value);
        }
    }
}
