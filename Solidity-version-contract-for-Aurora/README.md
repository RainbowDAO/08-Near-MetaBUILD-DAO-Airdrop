# Documentation on how to run the project

## Contract introduction

- AirDropFactory: Users can create their own airdrop through factory contracts,displays a list of airdrop information,It's a collection of all the contracts.
- airdropbyuser:  It is used to save the basic information and types of airdrop and get airdrop。
- airdrop: It is used to save the basic information and types of airdrop.

## Dependencies

- Linux or Mac
- node ≥ 14

## Network & Contract

- Network Name: Aurora Testnet
- RPC URL: [https://testnet.aurora.dev](https://testnet.aurora.dev/)

### contract address

#### AirDropFactory

0xE19233E22863480784A1E5eE54eEEe161230d225

## Installing

```
git clone https://github.com/RainbowDAO/08-Near-MetaBUILD-DAO-Airdrop.git
cd 08-Near-MetaBUILD-DAO-Airdrop/Solidity-version-contract-for-Aurora
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

## Create a AirDrop 

The creatAirDrop  in the AirDropFactory contract creates a AirDrop  of its own, amount,token.

~~~
createAirDrop() or createAirDropByUser()
~~~

