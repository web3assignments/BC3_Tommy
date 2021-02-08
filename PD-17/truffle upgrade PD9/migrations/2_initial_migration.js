const { deployProxy } = require('@openzeppelin/truffle-upgrades');
var greeter = artifacts.require("./Greeter.sol");

module.exports = async function (deployer) {
    const greet = await deployProxy(greeter, [10], { deployer });
    console.log(`Address of Contract: ${greet.address}`)
    console.log("Doing some tests with the just deployed contract");
    var bnx=await greet.bal() 
    console.log(`Initialized with balance 10, balance is now ${bnx.toString()}`)
    await greet.withdraw(3)    
    var bnx=await greet.bal() 
    console.log(`Called function withdraw(3), balance is now ${bnx.toString()}`)
};

