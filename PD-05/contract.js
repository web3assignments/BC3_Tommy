let address = "0xeA9cbd9388eb04F13B54E2D9aFCBDd3D99A113B0"

var abi = [{
    "inputs": [{
        "internalType": "int256",
        "name": "amt",
        "type": "int256"
    }],
    "name": "Deposit",
    "outputs": [],
    "stateMutability": "nonpayable",
    "type": "function"
}, {
    "inputs": [{
        "internalType": "int256",
        "name": "amt",
        "type": "int256"
    }],
    "name": "withdraw",
    "outputs": [],
    "stateMutability": "nonpayable",
    "type": "function"
}, {
    "inputs": [],
    "name": "bal",
    "outputs": [{
        "internalType": "int256",
        "name": "",
        "type": "int256"
    }],
    "stateMutability": "view",
    "type": "function"
}, {
    "inputs": [],
    "name": "get_balance",
    "outputs": [{
        "internalType": "int256",
        "name": "",
        "type": "int256"
    }],
    "stateMutability": "view",
    "type": "function"
}]