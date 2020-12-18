const contractAdress = "0x747a413EB18ec5C00ff844cCAE527ac9AFd5821f"

const ABI = [{
        "constant": false,
        "inputs": [],
        "name": "betAndWin",
        "outputs": [{
            "internalType": "bool",
            "name": "",
            "type": "bool"
        }],
        "payable": true,
        "stateMutability": "payable",
        "type": "function"
    },
    {
        "inputs": [],
        "payable": true,
        "stateMutability": "payable",
        "type": "constructor"
    },
    {
        "anonymous": false,
        "inputs": [{
            "indexed": false,
            "internalType": "bool",
            "name": "win",
            "type": "bool"
        }],
        "name": "Won",
        "type": "event"
    },
    {
        "payable": true,
        "stateMutability": "payable",
        "type": "fallback"
    },
    {
        "constant": true,
        "inputs": [],
        "name": "getBankBalance",
        "outputs": [{
            "internalType": "uint256",
            "name": "ret",
            "type": "uint256"
        }],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    },
    {
        "constant": true,
        "inputs": [],
        "name": "getRandom",
        "outputs": [{
            "internalType": "uint256",
            "name": "",
            "type": "uint256"
        }],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    }
]