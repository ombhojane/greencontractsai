const { ethers } = require("ethers");
const fs = require("fs");
const SafeMath = fs.readFileSync("./SafeMath.sol", "utf8");
const EcoFriendlyOptimizedContract = fs.readFileSync("./EcoFriendlyOptimizedContract.sol", "utf8");

async function deployContract() {
    const provider = new ethers.providers.JsonRpcProvider("https://mainnet.infura.io/v3/YOUR_INFURA_PROJECT_ID");
    const wallet = new ethers.Wallet("YOUR_PRIVATE_KEY", provider);

    const compiledSafeMath = new ethers.ContractFactory(SafeMath, wallet);
    const safeMath = await compiledSafeMath.deploy();

    const compiledContract = new ethers.ContractFactory(EcoFriendlyOptimizedContract, wallet);
    const contract = await compiledContract.deploy();

    console.log("SafeMath Contract Address:", safeMath.address);
    console.log("EcoFriendlyOptimizedContract Address:", contract.address);
}

deployContract();
