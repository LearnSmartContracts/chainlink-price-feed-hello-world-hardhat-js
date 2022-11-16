
const hre = require("hardhat");

const API_KEY = process.env.API_KEY;
const PRIVATE_KEY = process.env.PRIVATE_KEY;

const contract = require("../artifacts/contracts/TestChainlink.sol/TestChainlink.json");

// provider - Alchemy
const alchemyProvider = new ethers.providers.AlchemyProvider(network="goerli", API_KEY);

// signer - you
const signer = new ethers.Wallet(PRIVATE_KEY, alchemyProvider);


async function main() {
  const [deployer] = await ethers.getSigners();

  console.log("Deploying contracts with the account:", deployer.address);

  console.log("Account balance:", (await deployer.getBalance()).toString());

  const Token = await ethers.getContractFactory("TestChainlink");
  const token = await Token.deploy();

  console.log("Token address:", token.address);
 
  let price1 = await token.getETHUSD();
console.log(`Eth price is: ${price1}`);

let price2 = await token.getLINKUSD();
console.log(`Link price is: ${price2}`);

}

main();
