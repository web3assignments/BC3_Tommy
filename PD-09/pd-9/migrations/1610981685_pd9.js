const pd9 = artifacts.require("./pd9.sol");

module.exports = function(deployer) {
    deployer.deploy(pd9, "assignment pd9");
};