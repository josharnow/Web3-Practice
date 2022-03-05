// The script's call to web3.js is wrapped in a self-executing async function that contains a try/catch block. 

(async () => {
  try {
    // Query the current blocknumber; web3.js is injected by Remix
    let blockNumber = await web3.eth.getBlockNumber();
    console.log('current block number : ', blockNumber);
  } catch (e) {
    console.log(e.message);
  }
})()
