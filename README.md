# General steps to get started
## Install node.js and npm
- Use tutorial for you distribution/os to install node.js and npm
## Install hardhat
- `npm install --save-dev hardhat`
## Create a hardhat project
- Create a folder for the project and go in it
- `npx hardhat`
## Compile the project
- `npx hardhat compile`
## Test the project
- Edit Lock.js in the test folder or create a new test file
- `npx hardhat test`
## Install openzeppelin contracts
- `npm install @openzeppelin/contracts`
## Implement your contracts
- See Nft.sol in the demo project
## Deploy the project
- Edit deploy.ts
- `npx hardhat run scripts/deploy.ts`
## Add the hardhat-etherscan package for verifying contracts on etherscan
- `npm install hardhat-etherscan`
## Edit necessary configuration in hardhat.config
- fetch ethereum/infura/alchemy rpc node api endpoint
- fetch etherscan api token
- fetch ethereum account mnemonic (metamask)
- edit hardhat.config to read the secret variables (never commit secrets to git)
- edit hardhat.config with ethereum testnet network (goerli)
## Deploy to testnet
- `npx hardhat run scripts/deploy.js --network goerli`
## Verify the contract
- `npx hardhat verify --network goerli <CONTRACT_ADDRESS>`
## Mint a NFt
- go to etherscan goerli contract address page
- go to contract tab, click on Write
- connect web3 (metamask)
- call the mint() function
## Go to opensea collection page
- go to https://testnets.opensea.io/
- paste the contract address in the search bar
## Upload metadata
- upload images to ipfs (pinata) and record the url
- change the url to the images in the jsons
- upload the jsons and record the url
- change the base url in the contract
## Mint and view
- mint on etherscan
- view minted in opensea