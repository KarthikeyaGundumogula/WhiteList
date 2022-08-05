const {ethers,network,run} = require('hardhat');

async function main() {
  const whitelistFactory = await ethers.getContractFactory('Whitelist');
  console.log('Deploying Whitelist...');
  const whitelist = await whitelistFactory.deploy();
  console.log('Whitelist deployed at:', whitelist.address);
}