// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


import "../airdrop/airdrop.sol";
import "../airdrop/airdropbyuser.sol";

contract AirDropFactory {
    

    address public admin;
   
    // ============ Events ============

    event NewAirDrop(address erc20, address creator, bool isMintable);
    event AdminChange(address indexed Admin, address indexed newAdmin);


    // ============ Functions ============

    constructor()  public {
        admin = msg.sender;
    }
    
    modifier  _isOwner() {
        require(msg.sender == admin);
        _;
    }
    function changeOwner(address manager) external _isOwner {
        admin = manager;
        emit AdminChange(msg.sender,manager);
    }

     function createAirDrop2(address manager, address _token) external returns (address newERC20) {
        address _airdrop = address (new airdrop(manager,_token));
        emit NewAirDrop(_airdrop, msg.sender, false);
        return _airdrop;
    }
    
    function createAirDrop2(address manager, address _token,uint256 _time) external returns (address newERC20) {
        address _airdrop =address (new airdropbyuser(manager,_token,_time));
        emit NewAirDrop(_airdrop, msg.sender, false);
        return _airdrop;
    }
   
}