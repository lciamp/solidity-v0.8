// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotellRoom {
    // Eth payments
    // modifiers
    // visibility
    // events
    // enums

    // vacant
    // occupied
    enum Statuses {Vacant, Occupied};
    Statuses currentStatus;

    address payable public owner;

    constructor(){
        owner = msg.sender;
        currentStatus = Statuses.Vacant;
    }

    function book() payable {
        // check price
        // check status
        require();
        
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);


    }
}