const { deployProxy, upgradeProxy } = require('@openzeppelin/truffle-upgrades');
var Greeter = artifacts.require("./Greeter.sol");
var greeter1 = artifacts.require("greeter1");

module.exports = async function(deployer) {    
    const greet=await Greeter.deployed()
    const greet1=await upgradeProxy(greet.address, greeter1,{ deployer });
    console.log(`Address of Debug1Contract: ${greet.address}`)
    console.log(`Address of Debug2Contract: ${greet1.address}`)
    console.log("Doing some tests with the just upgraded contract");
    await greet1.withdraw(5)
    var bnx=await greet1.bal() 
    console.log(`Called function withdraw(5), balance is now ${bnx.toString()}`)
    await greet1.Deposit(5)
    var bnx=await greet1.bal() 
    console.log(`Called function deposit(5), balance is now ${bnx.toString()}`)
}