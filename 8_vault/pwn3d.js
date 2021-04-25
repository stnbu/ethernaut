// "_password" is at storage location 1. Its string value is "A very strong secret password :)"

web3.eth.getStorageAt(contract.address, 1).then((x)=>{contract.unlock(x);});
