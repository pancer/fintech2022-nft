require("@nomicfoundation/hardhat-toolbox");

const { infuraApiKey, mnemonic, etherscanApiKey } = require('./secrets.json');

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.17",
  networks: {
     goerli: {
       url: `https://goerli.infura.io/v3/${infuraApiKey}`,
       accounts: { mnemonic: mnemonic },
     },
   },
   etherscan: {
      apiKey: `${etherscanApiKey}`
   }
};
