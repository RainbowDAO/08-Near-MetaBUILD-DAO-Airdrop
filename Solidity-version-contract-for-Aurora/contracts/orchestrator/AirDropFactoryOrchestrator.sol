// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

import "../../node_modules/@openzeppelin/contracts/proxy/utils/Initializable.sol";
import "../factory/AirDropFactory.sol";

contract AirDropFactoryOrchestrator is Initializable {
    address airDropFactory;
    function init() external initializer {

        airDropFactory = address(new AirDropFactory());

        
    }
    
}