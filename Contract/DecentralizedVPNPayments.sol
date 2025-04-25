// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DecentralizedVPN {
    address public owner;
    uint public vpnPrice;

    mapping(address => bool) public hasPaid;

    event PaymentReceived(address indexed user, uint amount);
    event AccessGranted(address indexed user);
    event AccessRevoked(address indexed user);
    event PriceChanged(uint newPrice);
    event RefundIssued(address indexed user, uint amount);

    constructor(uint _vpnPriceInWei) {
        owner = msg.sender;
        vpnPrice = _vpnPriceInWei;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action.");
        _;
    }

    function payForVPN() public payable {
        require(msg.value == vpnPrice, "Incorrect payment amount.");
        hasPaid[msg.sender] = true;
        emit PaymentReceived(msg.sender, msg.value);
        emit AccessGranted(msg.sender);
    }

    function withdraw() public onlyOwner {
        payable(owner).transfer(address(this).balance);
    }

    function changePrice(uint _newPrice) public onlyOwner {
        vpnPrice = _newPrice;
        emit PriceChanged(_newPrice);
    }

    function checkAccess(address _user) public view returns (bool) {
        return hasPaid[_user];
    }

    function revokeAccess(address _user) public onlyOwner {
        require(hasPaid[_user], "User does not have access.");
        hasPaid[_user] = false;
        emit AccessRevoked(_user);
    }

    function getContractBalance() public view returns (uint) {
        return address(this).balance;
    }

    function refund(address payable _user) public onlyOwner {
        require(hasPaid[_user], "User did not pay.");
        hasPaid[_user] = false;
        _user.transfer(vpnPrice);
        emit RefundIssued(_user, vpnPrice);
    }
}
