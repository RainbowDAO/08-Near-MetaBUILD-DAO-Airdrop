# Documentation on how to run the project

## Contract introduction

- AirDropFactory: Users can create their own Token through factory contracts,displays a list of Token  information,It's a collection of all the contracts.
- airdropbyuser: Used to manage permissions between accounts or contracts, which can be changed by proposal.
- airdrop: It is used to save the basic information and types of dao.

## Dependencies

- Linux or Mac
- node ≥ 14

## Network & Contract

- Network Name: Aurora Testnet
- RPC URL: [https://testnet.aurora.dev](https://testnet.aurora.dev/)

### contract address

#### AirDropFactory

0xA36B967596CE46caC343B2054638DDD2B2B3eedd

## Installing

```
git clone https://github.com/RainbowDAO/04-Hackathon-DAO-factory.git
npm install
```

**Note**: Only the Metamask wallet is available for this demo

## Deploy Contracts

Open a local node or complete the information in the `truffle-config.js` and add the mnemonic to the `secret`

```
npm install -g @truffle/hdwallet-provider
truffle compile && truffle migrate
```

You will deploy contracts

- AirDropFactory

## Create a Token 

The creatAirDrop  in the AirDropMain contract creates a AirDrop  of its own, amount.