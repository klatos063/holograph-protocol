'use strict';
const {
    NETWORK,
    GAS,
    DEPLOYER
} = require ('../config/env');
const {getContractArtifact, createFactoryFromABI, saveContractResult, createNetworkPropsForUser} = require("./helpers/utils");

const { network, provider, web3 } = createNetworkPropsForUser(DEPLOYER, NETWORK)

const ContractName = 'HolographGenesis';
const HolographGenesisArtifact = getContractArtifact(ContractName)
const HolographGenesisContract = createFactoryFromABI(web3, HolographGenesisArtifact.abi)

// Function Call
HolographGenesisContract.deploy ({
    data: HolographGenesisArtifact.bin,
    arguments: []
}).send ({
    chainId: network.chain,
    from: provider.addresses [0],
    gas: web3.utils.toHex (600000),
    gasPrice: web3.utils.toHex (web3.utils.toWei (GAS, 'gwei'))
}, function (err, transactionHash) {
    console.log ('Transaction Hash :', transactionHash);
})
.then (function (contractInstance) {
    saveContractResult(NETWORK, ContractName, contractInstance.options.address)
    process.exit();
})