// SPDX-License-Identifier: none

pragma solidity ^0.8.0;

contract admin{
    address public owner;
    uint public serviceFee = 0;
    address public serviceFeeReceiver = address(0);

    constructor (){
        owner = msg.sender;
    }

    function changeTheOwner(address _address)public{
        require(owner==msg.sender,"Access Denied");
        owner = _address;
    }

    function updateServiceFeeReceiver(address _address) public{
        require(owner==msg.sender,"Access Denied");
        serviceFeeReceiver = _address;
    }  
    
    function updateServiceFee(uint _serviceFee) public{
        require(owner==msg.sender,"Access Denied");
        serviceFee = _serviceFee;
    }

}


