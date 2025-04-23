// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DecentralizedVPN {
    address public owner;
    uint public vpnPrice;

    mapping(address => bool) public hasPaid;

    event PaymentReceived(address indexed user, uint amount);
    event AccessGranted(address indexed user);

    constructor(uint _vpnPriceInWei) {
        owner = msg.sender;
        vpnPrice = _vpnPriceInWei;
    }

    function payForVPN() public payable {
        require(msg.value == vpnPrice, "Incorrect payment amount.");
        hasPaid[msg.sender] = true;
        emit PaymentReceived(msg.sender, msg.value);
        emit AccessGranted(msg.sender);
    }

    function withdraw() public {
        require(msg.sender == owner, "Only the owner can withdraw funds.");
        payable(owner).transfer(address(this).balance);
    }
}
