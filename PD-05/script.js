async function f() {
    web3 = new Web3(Web3.givenProvider);
    const contract = new web3.eth.Contract(ABI, contractAdress);
    var acts = await web3.eth.requestAccounts().catch(x => log(x.message));
    web3.extend({
        methods: [{
            name: 'eth_requestAccounts',
            call: 'eth_requestAccounts',
            params: 0
        }]

    });

    const CasinoContract = new web3.eth.Contract(CasinoABI, contractCasino);
    var result = await CasinoContract.methods.betAndWin().send({ from: acts[0], value: 1 });
    var win = web3.utils.hexToNumber((result.events[0].raw.data));
    log(`Win result=${win}`);
}